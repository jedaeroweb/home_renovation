class Admin::SlidesController < Admin::AdminController
  before_action :set_slide, only: [:show, :edit, :update, :destroy]

  # GET /slides
  # GET /slides.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @slide_count = Slide.count
    @slides = Slide.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slides }
    end
  end

  # GET /slides/1
  # GET /slides/1.json
  def show
  end

  # GET /slides/new
  def new
    @slide = Slide.new
    @slide.build_slide_description
  end

  # GET /slides/1/edit
  def edit
    unless @slide.slide_description.present?
      @slide.build_slide_description
    end
  end

  # POST /notices
  # POST /notices.json
  def create
    @slide = Slide.new(slide_params)

    respond_to do |format|
      if @slide.save
        format.html { redirect_to [:admin, @slide], notice: t(:slide, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @slide }
      else
        format.html { render action: 'new' }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slides/1
  # PATCH/PUT /slides/1.json
  def update
    respond_to do |format|
      if @slide.update(slide_params)
        format.html { redirect_to [:admin, @slide], notice: t(:slide, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @slide }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.json
  def destroy
    @slide.destroy
    respond_to do |format|
      format.html { redirect_to admin_slides_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_slide
    @slide = Slide.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def slide_params
    params.require(:slide).permit(:notice_id, :title, :enable, :picture, slide_description_attributes: [:id, :description, :font_id, :color, :size, :position_v, :position_h, :position_v_px, :position_h_px],slide_picture_attribute: [:id, :picture] )
  end
end
