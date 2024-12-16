class Admin::UserPointLogsController < Admin::AdminController
  before_action :set_user_point_log, only: [:show, :edit, :update, :destroy]

  # GET /user_point_logs
  # GET /user_point_logs.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @user_point_log_count = UserPointLog.where(enable: true).count
    @user_point_logs = UserPointLog.where(enable: true).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_point_logs }
    end
  end

  # GET /user_point_logs/1
  # GET /user_point_logs/1.json
  def show
  end

  # GET /user_point_logs/complete
  def new
    @user_point_log = UserPointLog.new
  end

  # GET /user_point_logs/1/edit
  def edit
  end

  # POST /user_point_logs
  # POST /user_point_logs.json
  def create
    @user_point_log = UserPointLog.new(user_point_log_params)

    respond_to do |format|
      if @user_point_log.save
        @user = User.find(@user_point_log.user_id)
        @user.update(:point => @user.point.to_i + @user_point_log.point.to_i)

        format.html { redirect_to [:admin, @user_point_log], notice: t(:user_point_log, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @user_point_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_point_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_point_logs/1
  # PATCH/PUT /user_point_logs/1.json
  def update
    respond_to do |format|
      if @user_point_log.update(user_point_log_params)
        format.html { redirect_to [:admin, @user_point_log], notice: t(:user_point_log, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @user_point_log }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_point_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_point_logs/1
  # DELETE /user_point_logs/1.json
  def destroy
    @user_point_log.destroy
    respond_to do |format|
      format.html { redirect_to admin_user_point_logs_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_point_log
    @user_point_log = UserPointLog.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_point_log_params
    params.require(:user_point_log).permit(:user_id, :point, :enable)
  end
end
