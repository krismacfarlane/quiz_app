class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_instructor
    @current_instructor ||= Instructor.find(session[:instructor_id]) if session[:instructor_id]
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  # makes current_instructor available in our views
  helper_method(:current_instructor)
  helper_method(:current_student)

  def authorize_instructor
    redirect_to '/login/instructor' unless current_instructor
  end

  def authorize_student
    redirect_to '/login/student' unless current_student
  end

end
