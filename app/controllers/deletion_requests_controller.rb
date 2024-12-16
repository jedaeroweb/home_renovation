class DeletionRequestsController < ApplicationController
  before_action :set_deletion_request, only: [:show, :edit, :update, :destroy]

  # GET /deletion_requests/1
  # GET /deletion_requests/1.json
  def show
  end

  # GET /deletion_requests/new
  def new
    @deletion_request = DeletionRequest.new
  end

  # POST /deletion_requests
  # POST /deletion_requests.json
  def create
    @deletion_request = DeletionRequest.new(deletion_request_params)

    respond_to do |format|
      if @deletion_request.save
        format.html { redirect_to @deletion_request, notice: 'question was successfully created.' }
        format.json { render :show, status: :created, location: @deletion_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deletion_request.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deletion_request
    @deletion_request = DeletionRequest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def deletion_request_params
    params.require(:deletion_request).permit(:title, :content, :enable)
  end
end
