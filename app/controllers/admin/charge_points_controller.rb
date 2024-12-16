class Admin::ChargePointsController < Admin::AdminController
  before_action :set_charge_point, only: [:show, :edit, :update, :destroy]

  # GET /charge_points
  # GET /charge_points.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @charge_point_count = ChargePoint.count
    @charge_points = ChargePoint.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charge_points }
    end
  end

  # GET /charge_points/1
  # GET /charge_points/1.json
  def show
  end

  # GET /charge_points/complete
  def new
    @charge_point = ChargePoint.new
  end

  # GET /charge_points/1/edit
  def edit
  end

  # POST /charge_points
  # POST /charge_points.json
  def create
    @charge_point = ChargePoint.new(charge_point_params)

    respond_to do |format|
      if @charge_point.save
        format.html { redirect_to [:admin, @charge_point], notice:  t(:charge_point, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @charge_point }
      else
        format.html { render action: 'new' }
        format.json { render json: @charge_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charge_points/1
  # PATCH/PUT /charge_points/1.json
  def update
    respond_to do |format|
      if @charge_point.update(charge_point_params)
        format.html { redirect_to [:admin, @charge_point], notice: t(:charge_point, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @charge_point }
      else
        format.html { render action: 'edit' }
        format.json { render json: @charge_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_points/1
  # DELETE /charge_points/1.json
  def destroy
    @charge_point.destroy
    respond_to do |format|
      format.html { redirect_to admin_charge_points_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_charge_point
    @review = ChargePoint.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def charge_point_params
    params.require(:charge_point).permit(:title, :price, :point, :enable)
  end
end
