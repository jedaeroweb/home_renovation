class ReviewsController < ApplicationController
  impressionist :actions => [:show]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:review_list_type]='list'
      else
        session[:review_list_type]='module'
      end
    end

    condition = {  enable: true }

    if params[:bidding].present?
      condition[:bidding_id]=params[:bidding]
    end

    @review_count = Review.where(condition).count
    @reviews = Review.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/show
  def new
    @review = Review.new
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:bidding_id, :title, :rating, :enable, review_content_attributes: [:content])
  end
end
