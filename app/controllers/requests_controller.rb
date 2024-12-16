class RequestsController < ApplicationController
  impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    if params[:id].present?
      set_request
    end

    @request_categories = RequestCategory.where(enable: true).page(0).per(100).order('id desc')

    if params[:category]
      @request_category = RequestCategory.find(params[:category])
    else
      if @request.present?
        @request_category = @request.request_category
      end
    end

    condition = { enable: true }

    if @request_category.present?
      condition[:request_category_id] = @request_category.id
    end

    @request_count = Request.where(condition).count
    @requests = Request.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/complete
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'question was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'question was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_request
    @request = Request.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def request_params
    params.require(:request).permit(:request_category_id, :size, :address, :title, :content, :enable, request_pictures_attributes: [:picture]).merge(user_id: current_user.id)
  end
end
