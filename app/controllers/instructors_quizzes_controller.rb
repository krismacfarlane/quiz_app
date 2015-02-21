class InstructorsQuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def create
    # binding.pry
    @quiz = Quiz.create(quiz_params)
    @question = Question.new
    grab_questions
    grab_answers
    redirect_to instructors_quiz_path(@quiz)
  end

  def new
    @instructors_quiz = Quiz.new
    # 3.times do
      question= @instructors_quiz.questions.build
      4.times { question.answers.build }
    # end
  end

  def quiz_params
    params.require(:quiz).permit(:name,:cohort_id,:questions_attributes)
  end

  def grab_questions
    question = params["quiz"]["questions_attributes"]["0"]["content"]
    @question.content = question
    @question.quiz_id = @quiz.id
    @question.save
  end

  def grab_answers
    answers = params["quiz"]["questions_attributes"]["0"]["answers_attributes"]
    answers.each do |a|
      b = Answer.new
      b.content = a[1]["content"]
      b.question_id = @question.id
      b.save
    end
  end

end
