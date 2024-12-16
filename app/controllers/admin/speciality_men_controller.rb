class Admin::SpecialityMenController < Admin::AdminController
  before_action :set_speciality_man, only: [:show, :edit, :update, :destroy]

  # GET /speciality_men
  # GET /speciality_men.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @speciality_man_count = SpecialityMan.count
    @speciality_men = SpecialityMan.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @speciality_men }
    end
  end

  # GET /speciality_men/1
  # GET /speciality_men/1.json
  def show
  end

  # GET /speciality_men/new
  def new
    @speciality_man = SpecialityMan.new
  end

  # GET /speciality_men/1/edit
  def edit
  end

  # POST /speciality_men
  # POST /speciality_men.json
  def create
    @speciality_man = SpecialityMan.new(speciality_man_params)

    respond_to do |format|
      if @speciality_man.save
        format.html { redirect_to admin_speciality_path(@speciality_man.speciality_id), notice:  t(:speciality_man, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @speciality_man }
      else
        format.html { render action: 'new' }
        format.json { render json: @speciality_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speciality_men/1
  # PATCH/PUT /speciality_men/1.json
  def update
    respond_to do |format|
      if @speciality_man.update(speciality_man_params)
        format.html { redirect_to admin_speciality_path(@speciality_man.speciality_id), notice:  t(:speciality_man, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @speciality_man }
      else
        format.html { render action: 'edit' }
        format.json { render json: @speciality_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speciality_men/1
  # DELETE /speciality_men/1.json
  def destroy
    speciality_id=@speciality_man.speciality_id
    @speciality_man.destroy
    respond_to do |format|
      format.html { redirect_to admin_speciality_path(speciality_id) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speciality_man
    @speciality_man = SpecialityMan.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def speciality_man_params
    params.require(:speciality_man).permit(:speciality_id, :title, :pay, :enable)
  end
end
