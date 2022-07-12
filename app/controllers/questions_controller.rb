class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if params[:question] == "I'm going to work"
      @answer = "Great!"
    elsif params[:question].last == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question].last == "!"
      @answer = "Don't you dare talk to me with that tone!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
