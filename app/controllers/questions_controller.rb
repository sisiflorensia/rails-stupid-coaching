class QuestionsController < ApplicationController
  def answer
    q_response = 'Silly question, get dressed and go to work!'
    @answer = "I don't care, get dressed and go to work!"

    @question = params[:question]
    @question.nil? ? @question = '' : @question.downcase!

    @answer = 'Great!' if @question.include? 'i am going to work'
    @answer = q_response if @question.include? '?'

    # render plain: @answer
  end
end
