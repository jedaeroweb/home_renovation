class UserBlocksController < ApplicationController
  load_and_authorize_resource

  def new
    @user_block=UserBlock.new
  end
  # POST /community_alerts
  # POST /community_alerts.json
  def create
    @user_block = UserBlock.new(user_block_params)

    respond_to do |format|
      if @user_block.save
        format.html { redirect_to @user_block, notice: 'user block was successfully created.' }
        format.json { render :show, status: :created, location: @user_block }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_block.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_block_params
    params.require(:user_block).permit(:block_user_id, :block_user_id).merge(user_id: current_user.id)
  end
end
