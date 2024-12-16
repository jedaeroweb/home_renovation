class Admin::ReservationsController < Admin::AdminController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @reservation_count = Reservation.count
    @reservations = Reservation.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @reservation = Reservation.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to [:admin, @reservation], notice: t(:reservation, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render action: 'new' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to [:admin, @reservation], notice: t(:reservation, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to admin_reservations_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @review = Reservation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reservation_params
    params.require(:reservation).permit(:title, :visit_time, :enable, review_content_attributes: [:content])
  end
end
