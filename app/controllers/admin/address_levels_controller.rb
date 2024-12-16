class Admin::AddressLevelsController < Admin::AdminController
  before_action :set_address_level, only: [:show, :edit, :update, :destroy]

  # GET /address_levels
  # GET /address_levels.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @address_level_count = AddressLevel.count
    @address_levels = AddressLevel.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_levels }
    end
  end

  # GET /address_levels/1
  # GET /address_levels/1.json
  def show
  end

  # GET /address_levels/complete
  def new
    @address_level = AddressLevel.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /address_levels
  # POST /address_levels.json
  def create
    @address_level = AddressLevel.new(address_level_params)

    respond_to do |format|
      if @address_level.save
        format.html { redirect_to [:admin, @address_level], notice: t(:address_level, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @address_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @address_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_levels/1
  # PATCH/PUT /address_levels/1.json
  def update
    respond_to do |format|
      if @address_level.update(address_level_params)
        format.html { redirect_to [:admin, @address_level], notice:  t(:address_level, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @address_level }
      else
        format.html { render action: 'edit' }
        format.json { render json: @address_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_levels/1
  # DELETE /address_levels/1.json
  def destroy
    @address_level.destroy
    respond_to do |format|
      format.html { redirect_to admin_address_levels_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_address_level
    @address = AddressLevel.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def address_level_params
    params.require(:address_level).permit(:title, :enable)
  end
end
