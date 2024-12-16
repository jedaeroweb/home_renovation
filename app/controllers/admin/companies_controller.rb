class Admin::CompaniesController < Admin::AdminController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @company_count = Company.count
    @companies = Company.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @companies }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/complete
  def new
    @company = Company.new

    @company.company_pictures.build
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to [:admin, @company], notice:  t(:company, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @company }
      else
        @company.company_pictures.build

        format.html { render action: 'new' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to [:admin, @company], notice:  t(:company, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to admin_companies_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @review = Company.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def company_params
    params.require(:company).permit(:user_id, :title, :code, :phone,  :start_time, :end_time, :enable, speciality_ids: [], company_pictures_attributes: [:id, :picture])
  end
end
