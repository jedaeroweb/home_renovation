class FaqsController < ApplicationController
  before_action :set_faq, only: [:show]

  # GET /faqs
  # GET /faqs.json
  def index
    @categoryId=nil
    condition={enable: true}

    @faq_categories = FaqCategory.where(condition)

    if(params[:faq_category_id])
      @categoryId=params[:faq_category_id].to_i

      condition[:faq_category_id]=@categoryId
    end

    @faq_count = Faq.where(condition).count
    @faqs = Faq.where(condition).order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: {:faqs=>@faqs} }
    end
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
    condition={enable: true}

    @faq_categories = FaqCategory.where(condition)

    @categoryId=@faq.faq_category_id
    condition[:faq_category_id]=@categoryId

    @faq_count = Faq.where(condition).count
    @faqs = Faq.where(:faq_category_id=>@categoryId).order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @faq.faq_content}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end
end
