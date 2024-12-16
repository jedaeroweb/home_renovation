class Admin::AcceptedBiddingsController < Admin::AdminController
  before_action :set_accepted_bidding, only: [:show, :edit, :update, :destroy]

  # GET /accepted_biddings
  # GET /accepted_biddings.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {}

    if params[:ad].present?
      @ad=Ad.find(params[:ad])

      condition[:ad_id]=@ad.id
    end

    @bidding_count = AcceptedBidding.where(condition).count
    @biddings = AcceptedBidding.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addresses }
    end
  end

  # GET /@accepted_biddings/1
  # GET /accepted_biddings/1.json
  def show
  end

  # GET /accepted_biddings/show
  def new
    @accepted_bidding = AcceptedBidding.new
  end

  # GET /accepted_biddings/1/edit
  def edit
  end

  # POST /accepted_biddings
  # POST /accepted_biddings.json
  def create
    @accepted_bidding = AcceptedBidding.new(accepted_biddings_params)

    respond_to do |format|
      if @accepted_bidding.save
        format.html { redirect_to [:admin, @accepted_bidding], notice: t(:address, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @accepted_bidding }
      else
        format.html { render action: 'new' }
        format.json { render json: @accepted_bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accepted_biddings/1
  # PATCH/PUT /accepted_biddings/1.json
  def update
    respond_to do |format|
      if @accepted_bidding.update(accepted_biddings_params)
        format.html { redirect_to [:admin, @accepted_bidding], notice: t(:address, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :ok, location: @accepted_bidding }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accepted_bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accepted_biddings/1
  # DELETE /accepted_biddings/1.json
  def destroy
    @accepted_bidding.destroy
    respond_to do |format|
      format.html { redirect_to admin_accepted_biddings_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_accepted_bidding
    @accepted_bidding = AcceptedBidding.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def accepted_biddings_params
    params.require(:accepted_bidding).permit(:user_id, :ad_id, :company_id, :enable)
  end
end
