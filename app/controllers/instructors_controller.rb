class InstructorsController < ApplicationController
before_action(:authorize_instructor, :except => [:new, :create])
  def new

  end

end
