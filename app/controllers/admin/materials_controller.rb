class Admin::MaterialsController < Admin::AdminController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @material_count = Material.count
    @materials = Material.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
    end
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/complete
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to [:admin, @material], notice: t(:material, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render action: 'new' }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to [:admin, @material], notice: t(:material, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render action: 'edit' }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to admin_materials_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_material
    @material = Material.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def material_params
    params.require(:material).permit(:title, :price, :picture, :enable)
  end
end
