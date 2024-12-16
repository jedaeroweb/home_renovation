class OrdersController < ApplicationController
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/complete
  def new
    Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  def my
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { user_id: current_user }

    @order_count = Order.where(condition).count
    @orders = Order.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @orders }
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        @user=User.find(current_user.id)

        format.html { redirect_to shoppings_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def order_params
    params[:order][:transaction_date]=Date.today.to_s
    params.require(:order).permit(:title, :transaction_date, :total_price, order_products_attributes: [:product_id, :quantity]).merge(user_id: current_user.id)
  end
end
