class QuizController < ApplicationController

  def index
    @student = Student.find(session[:student_id])
    # binding.pry
    # @student.cohort.quizzes
    quiz_array = Quiz.where(been_taken: false && cohort_id == @student.cohort_id)

    if(quiz_array == [])
      @response = "No quizzes, come back later"
    else
      @quizs = quiz_array
      @response = "You have to do these quizzes!"
    end
  end

    # quiz_array.each do |q|
    #   q.students.each do |s|
    #     s.id == @student.id
    #   end
    # end
end
