class Admin::SpecialitiesController < Admin::AdminController
  before_action :set_speciality, only: [:show, :edit, :update, :destroy]

  # GET /specialities
  # GET /specialities.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    category_condition = {enable: true}

    @speciality_categories = SpecialityCategory.where(category_condition)

    if params[:category].present?
      @speciality_category = SpecialityCategory.find(params[:category])
    end

    condition = { }

    if @speciality_category.present?
      condition[:speciality_category_id] = @speciality_category.id
    end

    @speciality_count = Speciality.where(condition).count
    @specialities = Speciality.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specialities }
    end
  end

  # GET /specialities/1
  # GET /specialities/1.json
  def show
  end

  # GET /specialities/complete
  def new
    @speciality = Speciality.new
    @speciality.build_speciality_picture
  end

  # GET /specialities/1/edit
  def edit
    unless @speciality.speciality_picture.present?
      @speciality.build_speciality_picture
    end
  end

  # POST /specialities
  # POST /specialities.json
  def create
    @speciality = Speciality.new(speciality_params)

    respond_to do |format|
      if @speciality.save
        format.html { redirect_to [:admin, @speciality], notice:  t(:speciality, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @speciality }
      else
        @speciality.speciality_men.build
        @speciality.build_speciality_picture

        format.html { render action: 'new' }
        format.json { render json: @speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialities/1
  # PATCH/PUT /specialities/1.json
  def update
    respond_to do |format|
      if @speciality.update(speciality_params)
        format.html { redirect_to [:admin, @speciality], notice:  t(:speciality, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @speciality }
      else
        unless @speciality.speciality_picture.present?
          @speciality.build_speciality_picture
        end

        unless @speciality.speciality_men.present?
          @speciality.build_speciality_men
        end

        format.html { render action: 'edit' }
        format.json { render json: @speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialities/1
  # DELETE /specialities/1.json
  def destroy
    @speciality.destroy
    respond_to do |format|
      format.html { redirect_to admin_specialities_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speciality
    @speciality = Speciality.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def speciality_params
    params.require(:speciality).permit(:title, :speciality_category_id, :enable, speciality_picture_attributes: [:id, :picture])
  end
end
