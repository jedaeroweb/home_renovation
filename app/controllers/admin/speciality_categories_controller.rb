class Admin::SpecialityCategoriesController < Admin::AdminController
  before_action :set_speciality_category, only: [:show, :edit, :update, :destroy]

  # GET /speciality_categories
  # GET /speciality_categories.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @speciality_category_count = SpecialityCategory.count
    @speciality_categories = SpecialityCategory.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @speciality_category }
    end
  end

  # GET /speciality_categories/1
  # GET /speciality_categories/1.json
  def show
  end

  # GET /speciality_categories/complete
  def new
    @speciality_category = SpecialityCategory.new
  end

  # GET /speciality_categories/1/edit
  def edit
  end

  # POST /speciality_categories
  # POST /speciality_categories.json
  def create
    @speciality_category = SpecialityCategory.new(speciality_category_params)

    respond_to do |format|
      if @speciality_category.save
        format.html { redirect_to [:admin, @speciality_category], notice:  t(:speciality_category, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @speciality_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @speciality_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speciality_categories/1
  # PATCH/PUT /speciality_categories/1.json
  def update
    respond_to do |format|
      if @speciality_category.update(speciality_category_params)
        format.html { redirect_to [:admin, @speciality_category], notice:  t(:speciality_category, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @speciality_category }
      else
        format.html { render action: 'edit' }
        format.json { render json: @speciality_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speciality_categories/1
  # DELETE /speciality_categories/1.json
  def destroy
    @speciality_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_speciality_categories_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speciality_category
    @speciality_category = SpecialityCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def speciality_category_params
    params.require(:speciality_category).permit(:title, :enable)
  end
end
