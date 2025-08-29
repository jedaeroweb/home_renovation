class HomeController < ApplicationController
  def index
    @script='home/index'

    condition = { enable: true }

    @slide_count = Slide.where(enable: true).count
    @slides = Slide.where(enable: true).page(0).per(10).order('id desc')

    @speciality_slide_count = Speciality.where(slide_show:true, enable: true).where.not( speciality_pictures_count: 0).count
    @speciality_slides = Speciality.where(slide_show:true, enable: true).where.not( speciality_pictures_count: 0).page(0).per(100).order('id desc')

    @review_slide_count = Review.where(condition).count
    @review_slides = Review.where(condition).page(0).per(10).order('id desc')

    @construction_count = Ad.joins(:speciality).where(speciality: {speciality_category_id: 1}, complete: false, enable: true).count
    @constructions = Ad.joins(:speciality).where(speciality: {speciality_category_id: 1}, complete: false, enable: true).page(0).per(6).order('id desc')

    @interior_count =  Ad.joins(:speciality).where(speciality: {speciality_category_id: 2}, complete: false, enable: true).count
    @interiors = Ad.joins(:speciality).where(speciality: {speciality_category_id: 2}, complete: false, enable: true).page(0).per(6).order('id desc')

    @apart_count =  Ad.joins(:speciality).where(speciality: {speciality_category_id: 3}, complete: false, enable: true).count
    @parts = Ad.joins(:speciality).where(speciality: {speciality_category_id: 3}, complete: false, enable: true).page(0).per(6).order('id desc')

    @product_count = Product.where(condition).count
    @products = Product.where(condition).page(0).per(12).order('id desc')

    @company_count = Company.where(condition).where.not( company_pictures_count: 0).count
    @companies = Company.where(condition).where.not( company_pictures_count: 0).page(0).per(6).order('id desc')

    @blog1_count = Blog.where(condition).where(blog_category_id: 1).count
    @blog1s = Blog.where(condition).where(blog_category_id: 1).page(0).per(4).order('id desc')

    @blog2_count = Blog.where(condition).where(blog_category_id: 2).count
    @blog2s = Blog.where(condition).where(blog_category_id: 2).page(0).per(4).order('id desc')

    @setting= Setting.first
  end

  def demo
    render layout: false  # 레이아웃 없이 내용만 렌더링
  end
  
  def no_auth

  end
end