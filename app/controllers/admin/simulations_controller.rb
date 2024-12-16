class Admin::SimulationsController < Admin::AdminController
  before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  # GET /simulation
  # GET /simulation.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    category_condition = {enable: true}

    @simulation_categories = SimulationCategory.where(category_condition)

    if params[:category].present?
      @simulation_category = SimulationCategory.find(params[:category])
    end

    condition = { }

    if @simulation_category.present?
      condition[:simulation_category_id] = @simulation_category.id
    end

    @simulation_count = Simulation.where(condition).count
    @simulations = Simulation.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simulations }
    end
  end

  # GET /simulation/1
  # GET /simulation/1.json
  def show
  end

  # GET /simulation/complete
  def new
    @simulation = Simulation.new
    @simulation.simulation_pictures.build
  end

  # GET /simulation/1/edit
  def edit
    unless @simulation.simulation_pictures.present?
      @simulation.simulation_pictures.build
    end
  end

  # POST /simulation
  # POST /simulation.json
  def create
    @simulation = Simulation.new(simulation_params)

    respond_to do |format|
      if @simulation.save
        format.html { redirect_to [:admin, @simulation], notice: t(:simulation, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @simulation }
      else
        @simulation.simulation_pictures.build

        format.html { render action: 'new' }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simulation/1
  # PATCH/PUT /simulation/1.json
  def update
    respond_to do |format|
      if @simulation.update(simulation_params)
        format.html { redirect_to [:admin, @simulation], notice: t(:simulation, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @simulation }
      else
        unless @simulation.simulation_pictures.present?
          @simulation.simulation_pictures.build
        end

        format.html { render action: 'edit' }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulation/1
  # DELETE /simulation/1.json
  def destroy
    @simulation.destroy
    respond_to do |format|
      format.html { redirect_to admin_simulations_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_simulation
    @simulation = Simulation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def simulation_params
    params.require(:simulation).permit(:simulation_category_id, :size_id, :title, :enable, simulation_pictures_attributes: [:id,:picture], simulation_blueprints_attributes: [:id, :picture])
  end
end
