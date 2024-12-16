class UserAddressesController < ApplicationController
  before_action :set_user_address, only: [:show, :edit, :update, :destroy]


  # GET /user_addresses/new
  def new
    @user_address= UserAddress.new
  end

  def create
    @user_address = UserAddress.new(user_address_params)

    respond_to do |format|
      if @user_address.save
        if params[:shopping_id].present?
          redirect_path=shopping_path(params[:shopping_id])
        else
          redirect_path=shoppings_path
        end

        format.html { redirect_to redirect_path }
        format.json { render :show, status: :created, location: @user_address }
      else
        format.html { render :new }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @user_address.update(user_address_params)
        if params[:shopping_id].present?
          redirect_path=shopping_path(params[:shopping_id])
        else
          redirect_path=shoppings_path
        end

        format.html { redirect_to redirect_path }
        format.json { render :show, status: :ok, location: @user_address }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @user_address.destroy
    respond_to do |format|
      format.html { redirect_to admin_reviews_url }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user_address
    @user_address = UserAddress.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_address_params
    params.require(:user_address).permit(:address,:address_detail, :postcode, :enable).merge(user_id: current_user.id)
  end
end
