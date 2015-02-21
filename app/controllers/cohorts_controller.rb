class CohortsController < ApplicationController

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
    @instructor_id = session[:instructor_id]
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to cohort_path(@cohort)
  end

  def cohort_params
    params.require(:cohort).permit(:name, :instructor_id, :room, :producer)
  end

end
