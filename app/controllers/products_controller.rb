class ProductsController < ApplicationController
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @product_categories = ProductCategory.where(enable: true)

    if params[:product_category_id]
      @product_category = ProductCategory.find(params[:product_category_id])
    else
      unless @product_categories.empty?
        @product_category = @product_categories.first
      end
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

  # GET /products/1
  # GET /products/1.json
  def show
    if params[:product_picture_id]
      @product_picture = ProductPicture.find(params[:product_picture_id])
    end
  end

  # GET /products/complete
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to shopping_path(id: @product), notice: '상품이 등록되었습니다.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: '상품이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: '상품이 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:product_category_id, :title, :content, :price, :discount, :enable, product_pictures_attributes: [:picture]).merge(company_id: session[:company_id])
    end
end
