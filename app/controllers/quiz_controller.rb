class QuizController < ApplicationController

  def index
    quiz_array = Quiz.where(been_taken: false)
    if(quiz_array == [])
      @response = "No quizzes, come back later"
    else
      @quizs = quiz_array
      @response = "You have to do these quizzes!"
    end
  end

end
