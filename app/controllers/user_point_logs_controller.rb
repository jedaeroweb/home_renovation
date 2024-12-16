class UserPointLogsController < ApplicationController
  load_and_authorize_resource except: [:complete]
  before_action :set_user_point_log, only: [:show, :edit, :update, :destroy]

  # GET /user_point_logs/1
  # GET /user_point_logs/1.json
  def show
  end

  # GET /user_point_logs/complete
  def new
    @user_point_log = UserPointLog.new

    @charge_point_count=ChargePoint.where(enable: true).count

    unless @charge_point_count.zero?
      @charge_points=ChargePoint.where(enable: true)
    end

    @script='charge'
  end

  # POST /user_point_logs
  # POST /user_point_logs.json
  def create
    @user_point_log = UserPointLog.new(user_point_log_params)

    respond_to do |format|
      if @user_point_log.save
        @user=User.find(current_user.id)

        format.html { redirect_to mypage_path, notice: '충전되었습니다.'}
        format.json { render :show, status: :created, location: @user_point_log }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_point_log.errors, status: :unprocessable_entity }
      end
    end
  end

  def complete

  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_point_log
    @user_point_log = UserPointLog.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_point_log_params
    params.require(:user_point_log).permit(:charge_point_id, :enable).merge(user_id: current_user.id)
  end
end
