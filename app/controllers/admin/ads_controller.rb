class Admin::AdsController < Admin::AdminController
  before_action :set_ad,  only: [:show, :edit, :update, :destroy]

  # GET /ads
  # GET /ads.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition={}

    @speciality_category_count=SpecialityCategory.where(enable: true).count
    @speciality_categories = SpecialityCategory.where(enable: true)

    if params[:category].present?
      condition[:speciality] = {:speciality_category_id=>params[:category]}

      @ad_count = Ad.joins(:speciality).where(condition).count
      @ads = Ad.joins(:speciality).where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
    else
      @ad_count = Ad.where(condition).count
      @ads = Ad.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
    end
  end

  # GET /ads/1
  # GET /ads/1.json
  def show
    @speciality_category_count=SpecialityCategory.where(enable: true).count
    @speciality_categories = SpecialityCategory.where(enable: true)
  end

  # GET /ads/complete
  def new
    @ad = Ad.new
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
        format.html { redirect_to admin_ad_path(@ad), notice:  t(:ad, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to admin_ad_path(@ad), notice:  t(:ad, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to admin_ads_url, notice:  t(:ad, scope: [:activerecord, :models])+t(:message_success_delete) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ad
    @ad = Ad.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ad_params
    params.require(:ad).permit(:ad_category_id, :address_id, :speciality_id, :title, :user_id, :start_date, :end_date, :budget, :budget_propose, :enable, ad_content_attributes: [:content], ad_size_attributes: [:size_id], ad_floor_attributes: [:floor_id], ad_pictures_attributes: [:picture], ad_blueprints_attributes: [:picture], ad_service_time_attributes: [:service_time_id])
  end
end
