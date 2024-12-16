class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:index, :edit, :my, :update, :destroy]

  # GET /Users
  # GET /Users.json
  def index
    condition = { user_id: current_user }

    @ad_count = Ad.where(condition).count
    @ads = Ad.where(condition).page(0).per(5).order('id desc')

    if session[:company_id].present?
      condition = { company_id: session[:company_id] }

      @bidding_count = Bidding.where(condition).count
      @biddings = Bidding.where(condition).page(0).per(5).order('id desc')

      condition = {  user_id: current_user, enable: true }

      @company_count = Company.where(condition).count
      @companies= Company.where(condition).page(0).per(5).order('id desc')
    end
  end

  def my

  end

  def show
    @user = User.find(params[:id])

    params[:per_page] = 12 unless params[:per_page].present?

    condition = { user_id: @user,enable: true }

    @ad_count = Ad.where(condition).count
    @ads = Ad.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end


  def delete_confirm

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user.id)
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :phone, user_pictures_attributes: [:picture])
  end
end
