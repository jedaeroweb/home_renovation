class CompaniesController < ApplicationController
  impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :set_speciality, only: [:index, :show]

  # GET /companies
  # GET /companies.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  enable: true }

    if params[:search].present?
      if params[:no_code].present?
        session[:no_code]=1
      else
        if session[:no_code].present?
          session.delete(:no_code)
        end
      end
    end

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:company_list_type]='list'
      else
        session[:company_list_type]='module'
      end
    end

    if @speciality_category.present?
      if @speciality.present?
        condition[:specialities] = {:id=>@speciality}
      else
        condition[:specialities] = {:speciality_category_id=>@speciality_category}
      end

      @speciality_count = Speciality.where(speciality_category_id: @speciality_category,enable: true).count
      @specialities = Speciality.where(speciality_category_id: @speciality_category,enable: true)
    else
      @speciality_count=0

      @speciality_category_count=SpecialityCategory.where(enable: true).count
      @speciality_categories=SpecialityCategory.where(enable: true)
    end

    if session[:no_code].present?
      @company_count = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(condition).where.not(:code=>nil).count
      @companies = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(condition).where.not(:code=>nil).page(0).per(12).order('id desc')
    else
      @company_count = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(condition).count
      @companies = Company.distinct('id').joins(:company_specialities).joins(:specialities).where(condition).page(0).per(12).order('id desc')
    end

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @companies }
    end
  end

  def my
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  user_id: current_user, enable: true }

    @company_count = Company.where(condition).count
    @companies= Company.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @companies }
    end
  end


  def new_info

  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    if params[:company_picture_id]
      @company_picture = CompanyPicture.find(params[:company_picture_id])
    end
    @company_accept_bidding=Bidding.where(company_id: @company, accept: true, enable: true).count
  end

  # GET /companies/complete
  def new
    unless current_user.companies_count.zero?
      company=Company.where(user_id: current_user.id, enable: true).first
      redirect_to edit_company_path(company)
    end

    @company = Company.new
    @company.company_pictures.build
    @company.build_company_code
  end

  # GET /companies/1/edit
  def edit
    unless @company.company_pictures.present?
      @company.company_pictures.build
    end

    unless @company.company_code.present?
      @company.build_company_code
    end
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        session[:company_id]=@company.id

        @user = User.find(current_user.id)


        if current_user.companies_count.zero?
          if @company.code.present?
            @user.update(:point => @user.point.to_i + 5000)
          end

          if @company.company_pictures.present?
            @user.update(:point => @user.point.to_i + 5000)
          end


          if @company.company_code.present?
            @user.update(:point => @user.point.to_i + 5000)
          end
        end

        format.html { redirect_to @company, notice: '전문가,회사가 등록되었습니다.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: '전문가,회사가 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: '전문가,회사가 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private

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
  def set_company
    @company = Company.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def company_params
    params.require(:company).permit(:title, :content, :code, :phone, :start_time, :end_time, :enable, company_pictures_attributes: [:id, :picture], company_code_attributes: [:id, :picture], speciality_ids: []).merge(user_id: current_user.id)
  end
end
