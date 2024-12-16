class AdsController < ApplicationController
  impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_ad, only: [:show, :edit, :update, :destroy]
  before_action :set_speciality, only: [:index, :show]

  # GET /orders
  # GET /orders.json
  def index
    params[:per_page] = 12 unless params[:per_page].present?

    condition = { enable: true }
    company_condition = { enable: true }
    order_condition = {enable:true}
    product_condition = {enable:true}

    if params[:search].present?
      if params[:no_order].present?
          session[:no_order]=1
      else
        if session[:no_order].present?
          session.delete(:no_order)
        end
      end
    end

    if session[:no_order].present?
      condition[:complete]=false
    end

    if params[:search_detail].present?
      session[:search_detail]=1
    else
      if params[:search_summary].present?
        session.delete(:search_detail)
      end
    end

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:ad_list_type]='list'
      else
        session[:ad_list_type]='module'
      end
    end

    if params[:address_id].present?
      condition[:address_id] = params[:address_id]
    else
      if params[:parent_address_id].present?
        condition[:addresses] = {parent_address_id: params[:parent_address_id] }
      end
    end

    if params[:speciality_ids].present?
      condition[:speciality_id]=params[:speciality_ids]
    end

    if @speciality_category.present?

      if @speciality.present?
        condition[:speciality] = {id: @speciality}
      else
        condition[:speciality] = {speciality_category_id: @speciality_category}
        product_condition[:speciality_category] = {id: @speciality_category}
      end


      @speciality_count = Speciality.where(speciality_category_id: @speciality_category,enable: true).count
      @specialities = Speciality.where(speciality_category_id: @speciality_category,enable: true)

      if @speciality.present?
        company_condition[:specialities] = {:id=>@speciality}
        order_condition[:speciality] = {:id=>@speciality}
      else
        company_condition[:specialities] = {:speciality_category_id=>@speciality_category}
        order_condition[:speciality] = {:speciality_category_id=>@speciality_category}
      end

      @company_count = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(company_condition).where.not( company_pictures_count: 0).count
      @companies = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(company_condition).where.not( company_pictures_count: 0).page(0).per(12).order('id desc')
    else
      @speciality_count=0

      @speciality_category_count=SpecialityCategory.where(enable: true).count
      @speciality_categories=SpecialityCategory.where(enable: true)
    end

    @ad_count = Ad.distinct('ads.id').joins(:speciality).joins(:address).where(condition).count
    @ads = Ad.distinct('ads.id').joins(:speciality).joins(:address).where(condition).page(params[:page]).per(params[:per_page]).order('complete asc, id desc')

    @accepted_bidding_count = AcceptedBidding.joins(:speciality).where(order_condition).count
    @accepted_biddings = AcceptedBidding.joins(:speciality).where(order_condition).page(0).per(12).order('id desc')

    @company_count = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(company_condition).where.not( company_pictures_count: 0).count
    @companies = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(company_condition).where.not( company_pictures_count: 0).page(0).per(12).order('id desc')

    @product_count = Product.joins(:speciality_category).where(product_condition).count
    @products = Product.joins(:speciality_category).where(product_condition).page(0).per(6).order('id desc')

    @blog_count = Blog.joins(:speciality_category).where(product_condition).count
    @blogs = Blog.joins(:speciality_category).where(product_condition).page(0).per(6).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @ads }
    end
  end

  def my
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { user_id: current_user }

    @ad_count = Ad.where(condition).count
    @ads = Ad.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @ads }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    if params[:speciality].present?
      @speciality= Speciality.where(:id=>params[:speciality],enable: true).first

      if @speciality.present?
        @speciality_category = SpecialityCategory.where(:id=>@speciality.speciality_category_id,enable: true).first
      end
    else
      if params[:category].present?
        @speciality_category = SpecialityCategory.where(:id=>params[:category],enable: true).first
      end
    end

    if params[:ad_picture_id]
      @ad_picture = AdPicture.find(params[:ad_picture_id])
    end

    @bidding_count=Bidding.where(ad_id: @ad).count
    @biddings=Bidding.where(ad_id: @ad).page(0).per(5).order('id desc')
  end

  # GET /orders/complete
  def new
    new_pre

    if @address.present? && @speciality.present?
      @ad = Ad.new
    end
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to ad_complete_path(speciality: @ad.speciality.id), notice: '공고가 등록되었습니다.' }
        format.json { render :show, status: :created, location: @ad }
      else
        new_pre

        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  def complete
    new_pre

    condition={enable: true}

        condition[:speciality_category] = {id: @speciality.speciality_category_id}

    @product_count = Product.joins(:speciality_category).where(condition).count
    @products = Product.joins(:speciality_category).where(condition).page(0).per(12).order('id desc')
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to @ad, notice: '공고가 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @ad }
        @ad
        format.html { render :edit }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to ads_url, notice: '공고가 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private

  def new_pre
    if params[:ad].present?
      if params[:ad][:address_id].present?
        address_id=params[:ad][:address_id]
      end
    end

    if params[:address_id].present?
      address_id=params[:address_id]
    end

    if address_id.present?
      @address=Address.where(id: address_id, enable: true).first
    end


    if params[:ad].present?
      if params[:ad][:speciality_id].present?
        speciality_id=params[:ad][:speciality_id]
      end
    end

    if params[:speciality].present?
      speciality_id=params[:speciality]
    end

    if speciality_id.present?
      @speciality=Speciality.where(id: speciality_id, enable: true).first
    end
  end

  def set_speciality
    if params[:speciality].present?
      @speciality= Speciality.where(:id=>params[:speciality],enable: true).first

      if @speciality.present?
        @speciality_category = SpecialityCategory.where(:id=>@speciality.speciality_category_id,enable: true).first
      end
    else
      if params[:category].present?
        @speciality_category = SpecialityCategory.where(:id=>params[:category],enable: true).first
      end
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_ad
    @ad = Ad.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ad_params
    params.require(:ad).permit(:ad_category_id, :address_id, :speciality_id, :title, :start_date, :end_date, :budget, :budget_propose, ad_content_attributes: [:content], ad_size_attributes: [:size_id], ad_floor_attributes: [:floor_id], ad_pictures_attributes: [:picture], ad_blueprints_attributes: [:picture], ad_service_time_attributes: [:service_time_id]).merge(user_id: current_user.id)
  end
end
