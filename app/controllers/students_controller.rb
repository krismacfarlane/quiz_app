class StudentsController < ApplicationController
  before_action(:authorize_student, :except => [:new, :create])

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student)
  end

  def student_params
    params.require(:student).permit(
        :name,
        :email,
        :password,
        :authenticity_token
      )
  end


end
