class CommunitiesController < ApplicationController
  impressionist :actions => [:show]

  # GET /communities
  # GET /communities.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  enable: true }

    @coomunity_notice_count = Notice.where(condition).count
    unless @coomunity_notice_count.zero?
      @coomunity_notices = Notice.where(condition).page(0).per(4).order('id desc')
    end

    @question_count = Question.where(condition).where(secret: false).where.not( answers_count: 0).count
    unless @question_count.zero?
      @questions = Question.where(condition).where(secret: false).where.not( answers_count: 0).page(0).per(2).order('id desc')
    end

    @faq_count = Faq.where(condition).count
    unless @faq_count.zero?
      @faqs = Faq.where(condition).page(0).per(2).order('id desc')
    end

    @contact_count = Contact.where(condition).count
    unless @contact_count.zero?
      @contacts = Contact.where(condition).page(0).per(4).order('id desc')
    end


    @blog1_count = Blog.where(condition).where(blog_category_id: 1).count
    unless @blog1_count.zero?
      @blog1s = Blog.where(condition).where(blog_category_id: 1).page(0).per(4).order('id desc')
    end

    @blog2_count = Blog.where(condition).where(blog_category_id: 2).count
    unless @blog2_count.zero?
      @blog2s = Blog.where(condition).where(blog_category_id: 2).page(0).per(4).order('id desc')
    end
  end
end
