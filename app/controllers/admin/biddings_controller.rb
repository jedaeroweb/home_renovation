class Admin::BiddingsController < Admin::AdminController
  before_action :set_bidding, only: [:show, :edit, :update, :destroy]

  # GET /biddings
  # GET /biddings.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {}

    if params[:ad].present?
      @ad=Ad.find(params[:ad])

      condition[:ad_id]=@ad.id
    end

    @bidding_count = Bidding.where(condition).count
    @biddings = Bidding.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biddings }
    end
  end

  # GET /biddings/1
  # GET /biddings/1.json
  def show
  end

  # GET /biddings/complete
  def new
    @bidding = Address.new
  end

  # GET /biddings/1/edit
  def edit
  end

  # POST /biddings
  # POST /biddings.json
  def create
    @bidding = Bidding.new(bidding_params)

    respond_to do |format|
      if @bidding.save
        format.html { redirect_to [:admin, @bidding], notice: t(:bidding, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @bidding }
      else
        format.html { render action: 'new' }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biddings/1
  # PATCH/PUT /biddings/1.json
  def update
    respond_to do |format|
      if @bidding.update(bidding_params)
        format.html { redirect_to [:admin, @bidding], notice: t(:bidding, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :ok, location: @bidding }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biddings/1
  # DELETE /biddings/1.json
  def destroy
    @bidding.destroy
    respond_to do |format|
      format.html { redirect_to admin_biddings_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bidding
    @biddings = Bidding.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bidding_params
    params.require(:bidding).permit(:user_id, :ad_id, :company_id, :enable)
  end
end
