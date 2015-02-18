class SessionsController < ApplicationController

  def new
  end

  def create
    # handle the lookup and auth
    if(params[:title] == 'instructor')
      instructor = Instructor.find_by({email: params[:email]})

      if instructor && instructor.authenticate(params[:password])
        session[:instructor_id] = instructor.id
        redirect_to instructors_path
      else
        render :new
      end
    elsif(params[:title] == 'student')
      student = Student.find_by({email: params[:email]})

      if student && student.authenticate(params[:password])
        session[:student_id] = student.id
        redirect_to students_path
      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  def destroy
  end

end
