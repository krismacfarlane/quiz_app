class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # @student = Student.find(session[:student_id])

  def current_instructor
    @current_instructor ||= Instructor.find_by_id(session[:instructor_id]) if session[:instructor_id]
    if @current_instructor
      true
    else
      logout
    end
  end

  def current_student
    @current_student ||= Student.find_by_id(session[:student_id]) if session[:student_id]
    if @current_student
      true
    else
      logout
    end
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

  def logout
    session[:student_id], session[:instructor_id] = nil
  end

end
