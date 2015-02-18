class Student < ActiveRecord::Base
  has_secure_password

  belongs_to :cohort
  has_and_belongs_to_many :quizzes

end
