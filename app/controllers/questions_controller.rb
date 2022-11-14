class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @last_string = @question.last

    @coaching = "I don't care, get dressed and go to work!"
    @coaching = "Great!" if @question == "I am going to work"
    @coaching = "Silly question, get dressed and go to work!" if @question.last == "?"

  end
end
