class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]


 
  def edit

   @question = Question.find(params[:id])
   respond_to do |format|
   format.js { }
  end
end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    respond_to do |format|
      if @question.save
        format.html { redirect_to '/', notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      format.js{ }
      else
        format.js{ }
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update

    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      format.js{ }
      else
        format.js{ }
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render :layout => false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:content, :user, :category)
    end
end
