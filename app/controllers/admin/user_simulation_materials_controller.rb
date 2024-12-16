class Admin::UserSimulationMaterialsController < Admin::AdminController
  before_action :set_user_simulation_material, only: [:show, :edit, :update, :destroy]

  # GET /user_simulation_materials
  # GET /user_simulation_materials.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @user_simulation_material_count = UserSimulationMaterial.count
    @user_simulation_materials = UserSimulationMaterial.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_simulation_materials }
    end
  end

  # GET /user_simulation_materials/1
  # GET /user_simulation_materials/1.json
  def show
  end

  # GET /user_simulation_materials/new
  def new
    @user_simulation_material = UserSimulationMaterial.new
  end

  # GET /notices/1/edit
  def edit
  end

  # POST /user_simulation_materials
  # POST /user_simulation_materials.json
  def create
    @user_simulation_material = UserSimulationMaterial.new(user_simulation_material_params)

    respond_to do |format|
      if @user_simulation_material.save
        format.html { redirect_to [:admin, @user_simulation_material], notice: t(:user_simulation_material, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @user_simulation_material }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_simulation_materials/1
  # PATCH/PUT /user_simulation_materials/1.json
  def update
    respond_to do |format|
      if @user_simulation_material.update(user_simulation_material_params)
        format.html { redirect_to [:admin, @user_simulation_material], notice: t(:user_simulation_material, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @user_simulation_material }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_simulation_materials/1
  # DELETE /user_simulation_materials/1.json
  def destroy
    @user_simulation_material.destroy
    respond_to do |format|
      format.html { redirect_to admin_user_simulation_materials_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_simulation_material
    @user_simulation_material = UserSimulationMaterial.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_simulation_material_params
    params.require(:user_simulation_material).permit(:user_id, :simulation_material_id)
  end
end
