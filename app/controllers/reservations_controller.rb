class ReservationsController < ApplicationController
  impressionist :actions => [:show]
  before_action :set_reservation, only: [:edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { user_id: session[:user_id], enable: true }

    @reservation_count = Reservation.where(condition).count
    @reservations= Reservation.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @reservations }
    end
  end


  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/complete
  def new
    @reservation = Reservation.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @reservation = Reservation.new(reservation_params)

    if user_signed_in?
      @reservation.user_id=current_user.id
    end

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice:  '방문예약이 되었습니다.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: '방문예약이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:title, :name, :visit_time, :enable, reservation_content_attributes: [:content])
  end
end
