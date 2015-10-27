class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @question = Question.new
    2.times do @question.options.build end
  end
end
