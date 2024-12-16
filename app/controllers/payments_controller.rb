class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  skip_forgery_protection
  # GET /payments
  # GET /payments.json
  def index

  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new

  end

  # GET /payments/1/edit
  def edit
  end

  def callback
    Iamport.payment(ENV['importJs'])
    order=Iamport.find(params[:merchant_uid])
    @order=order.parsed_response['response']

    payment=Payment.create(title: @order['name'], payment_id: @order['imp_uid'], payment_merchant_id: @order['merchant_uid'],  payment_method: @order['pay_method'], amount: @order['amount'], status: @order['status'])

    #charge_point
    if @order['merchant_uid'].include?('charge_point')
      user_point_log_id=@order['merchant_uid'].delete_prefix("charge_point_")
      user_point_log = UserPointLog.find(user_point_log_id)

      charge_point=ChargePoint.find(user_point_log.charge_point_id)
      user=User.find(user_point_log.user_id)

      user_point_log.update(point: charge_point.point.to_i, enable: true)
      user.update(point: user.point.to_i + charge_point.point.to_i)
    else
      #order_product
      order_id=@order['merchant_uid'].delete_prefix("order_product_")
      order = Order.find(order_id)

      order.update( enable: true)
      OrderPayment.create(order_id: order.id, payment_id: payment.id)
    end
  end

  def complete
    
  end


  # POST /payments
  # POST /payments.json
  def create
    respond_to do |format|
      if @order.save
        format.html { redirect_to new_order_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
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

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:order).permit(:user_id)
  end
end
