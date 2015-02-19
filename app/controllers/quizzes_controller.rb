class QuizzesController < ApplicationController

  def show
    @quiz = Quiz.find(params[:id])
  end

  def create

  end

  def new
    @quiz = Quiz.new
    3.times do
      question= @quiz.questions.build
      4.times { question.answers.build }
    end
  end
end
