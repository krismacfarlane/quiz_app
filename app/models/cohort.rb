class Cohort < ActiveRecord::Base

  has_many :students
  has_many :quizzes
  belongs_to :instructor
end
