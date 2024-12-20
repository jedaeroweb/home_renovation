class BlogsController < ApplicationController
  before_action :authenticate_user!, :except => [:index,:show]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    if params[:search_detail].present?
      session[:search_detail]=1
    else
      if params[:search_summary].present?
        session.delete(:search_detail)
      end
    end

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:blog_list_type]='list'
      else
        session[:blog_list_type]='module'
      end
    end

    @blog_category_count=BlogCategory.where(enable: true).count
    @blog_categories=BlogCategory.where(enable: true)

    params[:per_page] = 20 unless params[:per_page].present?

    if params[:category]
      @blog_category = BlogCategory.find(params[:category])
    end

    condition = { enable: true }

    if @blog_category.present?
      condition[:blog_category_id] = @blog_category.id
    end

    @blog_count = Blog.where(condition).count
    @blogs = Blog.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')


    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
   @blog_comments=@blog.blog_comment.order('id desc').page(params[:page]).per(10)
   @blog_comment=BlogComment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @blog_comments }
    end
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
    @blog.build_blog_picture
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save

        format.html { redirect_to @blog, notice: 'blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        @blog.build_blog_picture

        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:blog_category_id, :title, :description, :content, blog_picture_attributes: [:picture]).merge(user_id: current_user.id)
  end
end
