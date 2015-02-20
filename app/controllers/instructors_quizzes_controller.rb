class InstructorsQuizzesController < ApplicationController

  def show
    @quiz = Quiz.find(params[:id])
  end

  def create
    quiz = Quiz.create(quiz_params)
    redirect_to instructors_quiz_path(quiz)
  end

  def new
    @instructors_quiz = Quiz.new
    # 3.times do
      question= @instructors_quiz.questions.build
      4.times { question.answers.build }
    # end
  end

  def quiz_params
    params.require(:quiz).permit(:name,:cohort_id)
  end

end