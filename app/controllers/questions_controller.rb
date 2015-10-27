class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
    2.times do @question.options.build end
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    @question.save
    @question.options.create(option_params[:options][0])
    @question.options.create(option_params[:options][1])
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title)
  end
  def option_params
    params.require(:question).permit(:options => [:text, :image_url])
  end
end
