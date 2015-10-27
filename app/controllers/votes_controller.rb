class VotesController < ApplicationController
  def create
    @option = Option.find(params[:option])
    @option.votes.create(user_id: current_user.id)
    @question = @option.question
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end
end
