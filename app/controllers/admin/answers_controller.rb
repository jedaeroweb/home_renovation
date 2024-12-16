class Admin::AnswersController < Admin::AdminController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @answer_count = Answer.count
    @answers = Answer.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/complete
  def new
    @answer = Answer.new

    @question = Question.find(params[:question_id])
  end

  # GET /answers/1/edit
  def edit
    @question=@answer.question
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to admin_question_path(@answer.question_id), notice: t(:question, scope: [:activerecord, :models])+t(:message_success_create) }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to admin_question_path(@answer.question_id), notice: t(:question, scope: [:activerecord, :models])+t(:message_success_update) }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to admin_questions_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_answer
    @answer = Answer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def answer_params
    params.require(:answer).permit(:question_id, :user_id, :title, :content, :enable)
  end
end
