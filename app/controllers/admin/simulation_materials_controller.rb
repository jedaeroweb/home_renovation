class Admin::SimulationMaterialsController < Admin::AdminController
  before_action :set_simulation_material, only: [:show, :edit, :update, :destroy]

  # GET /simulation_materials
  # GET /simulation_materials.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @simulation_material_count = SimulationMaterial.count
    @simulation_materials = SimulationMaterial.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simulation_material }
    end
  end

  # GET /simulation_materials/1
  # GET /simulation_materials/1.json
  def show
  end

  # GET /simulation_materials/complete
  def new
    @simulation_material = SimulationMaterial.new
    @simulation_material.simulation_material_pictures.build
  end

  # GET /simulation_materials/1/edit
  def edit
    unless @simulation_material.simulation_material_pictures.present?
      @simulation_material.simulation_material_pictures.build
    end
  end

  # POST /simulation_materials
  # POST /simulation_materials.json
  def create
    @simulation_material = SimulationMaterial.new(simulation_material_params)

    respond_to do |format|
      if @simulation_material.save
        format.html { redirect_to [:admin, @simulation_material], notice:  t(:simulation_material, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @simulation_material }
      else
        @simulation_material.simulation_material_pictures.build

        format.html { render action: 'new' }
        format.json { render json: @simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simulation_materials/1
  # PATCH/PUT /simulation_materials/1.json
  def update
    respond_to do |format|
      if @simulation_material.update(simulation_material_params)
        format.html { redirect_to [:admin, @simulation_material], notice:  t(:simulation_material, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @simulation_material }
      else
        format.html { render action: 'edit' }
        format.json { render json: @simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulation_materials/1
  # DELETE /simulation_materials/1.json
  def destroy
    @simulation_material.destroy
    respond_to do |format|
      format.html { redirect_to admin_simulation_materials_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_simulation_material
    @simulation_material = SimulationMaterial.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def simulation_material_params
    params.require(:simulation_material).permit(:simulation_id, :material_id, :price, :enable, simulation_material_pictures_attributes: [:id, :picture], simulation_material_content_attributes: [:content])
  end
end
