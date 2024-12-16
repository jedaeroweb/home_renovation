class PortfoliosController < ApplicationController
  before_action :authenticate_user!, :except => [:index,:show]
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  # GET /portfolios.json
  def index

    respond_to do |format|
      format.html
      format.json { render json: @portfolios }
    end
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @portfolio }
    end
  end

  # GET /portfolios/new
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

        format.html { redirect_to @portfolio, notice: '포트폴리오가 등록되었습니다.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        @portfolio.build_portfolio_picture

        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: '포트폴리오가 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    company_id=@portfolio.company_id
    respond_to do |format|
      format.html { redirect_to company_url(company_id), notice: '포트폴리오가 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def portfolio_params
    params.require(:portfolio).permit(:company_id, :title, :description, :content, portfolio_picture_attributes: [:id, :picture]).merge(company_id: session[:company_id])
  end
end
