class InstructorsController < ApplicationController
before_action(:authorize_instructor, :except => [:new, :create])

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    instructor = Instructor.create(instructor_params)
    redirect_to instructor_path(instructor)
  end

  def instructor_params
    params.require(:instructor).permit(
        :name,
        :email,
        :password,
        :authenticity_token
      )
  end

end
