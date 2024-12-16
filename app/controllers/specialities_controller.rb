class SpecialitiesController < ActionController::Base

  # GET /specialities
  # GET /specialities.json
  def index
    params[:per_page] = 100000 unless params[:per_page].present?

    condition = {  enable: true }

    if params[:speciality_category_id].present?
      condition[:specialities] = {speciality_category_id: params[:speciality_category_id] }
    end

    @specialities = Speciality.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html
      format.json { render json: @specialities }
    end
  end
end
