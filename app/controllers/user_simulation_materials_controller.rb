class UserSimulationMaterialsController < ApplicationController
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_user_simulation_material, only: [:show, :edit, :update, :destroy]

  # GET /user_simulation_materials
  # GET /user_simulation_materials.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition={enable: true}

    @user_simulation_material_count = UserSimulationMaterial.where(condition).count
    @user_simulation_materials = UserSimulationMaterial.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
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

  # GET /user_simulation_materials/1/edit
  def edit
  end

  # POST /user_simulation_materials
  # POST /user_simulation_materials.json
  def create
    @user_simulation_material = UserSimulationMaterial.new(user_simulation_material_params)
    @user_simulation_material.user_id=current_user.id

    respond_to do |format|
      if @user_simulation_material.save
        format.html { redirect_to @user_simulation_material, notice: '해당조건으로 상담신청 되었습니다.' }
        format.json { render :show, status: :created, location: @user_simulation_material }
      else
        format.html { render :new }
        format.json { render json: @user_simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_simulation_materials/1
  # PATCH/PUT /user_simulation_materials/1.json
  def update
    respond_to do |format|
      if @user_simulation_material.update(user_simulation_material_params)
        format.html { redirect_to @user_simulation_material, notice: 'simulation_material was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_simulation_material }
      else
        format.html { render :edit }
        format.json { render json: @user_simulation_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_simulation_materials/1
  # DELETE /user_simulation_materials/1.json
  def destroy
    @user_simulation_material.destroy
    respond_to do |format|
      format.html { redirect_to user_simulation_materials_url, notice: 'simulation_material was successfully destroyed.' }
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
      params.require(:user_simulation_material).permit(:simulation_material_id)
    end
end
