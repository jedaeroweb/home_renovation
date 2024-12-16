class Admin::PortfoliosController < Admin::AdminController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  # GET /portfolios.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @portfolio_count = Portfolio.count
    @portfolios = Portfolio.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolios }
    end
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
  end

  # GET /portfolios/complete
  def new
    @portfolio = Portfolio.new
    @portfolio.build_portfolio_picture
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  # POST /portfolios.json
  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to [:admin, @portfolio], notice: t(:portfolio, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render action: 'new' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to [:admin, @portfolio], notice: t(:portfolio, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render action: 'edit' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to admin_portfolios_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def portfolio_params
    params.require(:portfolio).permit(:company_id, :title, :content, :picture, :enable, portfolio_picture_attributes: [:id, :picture])
  end
end
