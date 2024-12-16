class Admin::SettingsController < Admin::AdminController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  # GET /settings
  # GET /settings.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?
    @setting = Setting.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @setting }
    end
  end

  # GET /settings/1
  # GET /settings/1.json
  def show
  end

  # GET /settings/new
  def new
  end

  # GET /settings/1/edit
  def edit
  end

  # POST /notices
  # POST /notices.json
  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to [:admin, @setting], notice: t(:slide, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @setting }
      else
        format.html { render action: 'new' }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settings/1
  # PATCH/PUT /settings/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to [:admin, @setting], notice: t(:slide, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render action: 'edit' }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settings/1
  # DELETE /settings/1.json
  def destroy
    @setting.destroy
    respond_to do |format|
      format.html { redirect_to admin_slides_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_setting
    @setting = Setting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def setting_params
    params.require(:setting).permit(:scroll_title, :enable)
  end
end
