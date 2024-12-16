class Admin::SimulationCategoriesController < Admin::AdminController
  before_action :set_simulation_category, only: [:show, :edit, :update, :destroy]

  # GET /simulation_categories
  # GET /simulation_categories.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition={}

    @simulation_category_count = SimulationCategory.where(condition).count
    @simulation_categories = SimulationCategory.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /simulation_categories/1
  # GET /simulation_categories/1.json
  def show
  end

  # GET /simulation_categories/new
  def new
    @simulation_category = SimulationCategory.new
  end

  # GET /simulation_categories/1/edit
  def edit
  end

  # POST /simulation_categories
  # POST /simulation_categories.json
  def create
    @simulation_category = SimulationCategory.new(simulation_category_params)

    respond_to do |format|
      if @simulation_category.save
        format.html { redirect_to admin_simulation_category_path(@simulation_category), notice: 'simulation category was successfully created.' }
        format.json { render :show, status: :created, location: @simulation_category }
      else
        format.html { render :new }
        format.json { render json: @simulation_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simulation_categories/1
  # PATCH/PUT /simulation_categories/1.json
  def update
    respond_to do |format|
      if @simulation_category.update(simulation_category_params)
        format.html { redirect_to admin_simulation_category_path(@simulation_category), notice: 'simulation category was successfully updated.' }
        format.json { render :show, status: :ok, location: @simulation_category }
      else
        format.html { render :edit }
        format.json { render json: @simulation_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulation_categories/1
  # DELETE /simulation_categories/1.json
  def destroy
    @simulation_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_product_categories_url, notice: 'simulation category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_simulation_category
    @simulation_category = SimulationCategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def simulation_category_params
    params.require(:simulation_category).permit(:title, :enable)
  end
end
