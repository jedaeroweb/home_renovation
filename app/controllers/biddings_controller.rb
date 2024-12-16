class BiddingsController < ApplicationController
  load_and_authorize_resource  except: [:show]
  before_action :set_bidding, only: [:show, :edit, :update, :destroy, :accept]

  # GET /biddings
  # GET /biddings.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { enable: true}

    if params[:ad].present?
      @ad=Ad.find(params[:ad])

      condition[:ad_id]=@ad.id
    end

    @bidding_count = Bidding.where(condition).count
    @biddings = Bidding.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @biddings }
    end
  end

  def my
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { company_id: session[:company_id] }

    @bidding_count = Bidding.where(condition).count
    @biddings = Bidding.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @biddings }
    end
  end


  # GET /biddings/1
  # GET /biddings/1.json
  def show
  end

  # GET /biddings/complete
  def new
    condition = { enable: true}

    if params[:ad].present?
      @ad=Ad.find(params[:ad])

      condition[:ad_id]=@ad.id
    end

    @bidding = Bidding.new
  end

  # GET /biddings/1/edit
  def edit
  end

  # POST /biddings
  # POST /biddings.json
  def create
    @bidding = Bidding.new(bidding_params)

    @user = User.find(current_user.id)
    if @user.point.to_i < 10000
      result=false
    else
      result=@bidding.save
    end

    respond_to do |format|
      if result
        @user.update(:point => @user.point.to_i - 10000)

        format.html { redirect_to @bidding, notice: '입찰이 완료되었습니다.' }
        format.json { render :show, status: :created, location: @bidding }
      else
        @ad=Ad.find(bidding_params[:ad_id])

        format.html { render :new }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biddings/1
  # PATCH/PUT /biddings/1.json
  def update
    respond_to do |format|
      if @bidding.update(bidding_params)
        format.html { redirect_to @bidding, notice: '입찰이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @bidding }
      else
        format.html { render :edit }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end


  def accept
    respond_to do |format|
      if @bidding.update(accept: true,updated_at: Time.current)
        @bidding.ad.update(complete: true)

        format.html { redirect_to @bidding, notice: '입찰이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @bidding }
      else
        format.html { render :edit }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biddings/1
  # DELETE /biddings/1.json
  def destroy
    @bidding.destroy
    respond_to do |format|
      format.html { redirect_to biddings_url, notice: '입찰이 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bidding
    @bidding = Bidding.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bidding_params
    params.require(:bidding).permit(:ad_id, :budget, :accept, :enable, bidding_content_attributes: [:content]).merge(company_id: session[:company_id])
  end
end
