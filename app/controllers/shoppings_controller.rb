class ShoppingsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /shoppings
  # GET /shoppings.json
  def index
    if params[:search_detail].present?
      session[:search_detail]=1
    else
      if params[:search_summary].present?
        session.delete(:search_detail)
      end
    end

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:product_list_type]='list'
      else
        session[:product_list_type]='module'
      end
    end

    params[:per_page] = 20 unless params[:per_page].present?

    if params[:category]
      @product_category = ProductCategory.find(params[:category])
    end

    condition = { enable: true }

    if @product_category.present?
      condition[:product_category_id] = @product_category.id
    end

    @product_count = Product.where(condition).count
    @products = Product.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')


    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @products }
    end
  end

  # GET /shoppings/1
  # GET /shoppings/1.json
  def show
    if params[:product_picture_id]
      @product_picture = ProductPicture.find(params[:product_picture_id])
    end

    @order=Order.new

    @script='order'

    @product_count = Product.where(product_category_id: @product.product_category_id, enable: true).count
    @products = Product.where(product_category_id: @product.product_category_id, enable: true).page(0).per(6).order('id desc')
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
end
