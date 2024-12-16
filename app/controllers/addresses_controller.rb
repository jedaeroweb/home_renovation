class AddressesController < ActionController::Base

  # GET /addresses
  # GET /addresses.json
  def index
    params[:per_page] = 100000 unless params[:per_page].present?

    condition = {  enable: true }

    if params[:parent_address_id].present?
      condition[:addresses] = {parent_address_id: params[:parent_address_id] }
    end

    @addresses = Address.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html
      format.json { render json: @addresses }
    end
  end
end
