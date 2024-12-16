class SimulationsController < ApplicationController
  before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    if params[:id].present?
      set_simulation
    end

    @simulation_categories = SimulationCategory.where(enable: true).page(0).per(100).order('id desc')

    if params[:category]
      @simulation_category = SimulationCategory.find(params[:category])
    else
      if @simulation.present?
        @simulation_category = @simulation.simulation_category
      end
    end

    condition = { enable: true }

    if @simulation_category.present?
      condition[:simulation_category_id] = @simulation_category.id
    end

    @simulation_count = Simulation.where(condition).count
    @simulations = Simulation.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    unless @simulation_count.zero?
      unless @simulation.present?
        @simulation = @simulations[0];
      end
    end

    if params[:simulation_material].present?
      @simulation_material=SimulationMaterial.find(params[:simulation_material])
      @user_simulation_material = UserSimulationMaterial.new
    end

    @material_count = Material.where(enable: true).count
    @materials = Material.where(enable: true).page(0).per(100).order('id desc')
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_simulation
    @simulation = Simulation.find(params[:id])
  end
end
