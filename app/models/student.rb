class Student < ActiveRecord::Base
  has_secure_password

  belongs_to :cohort
  has_many :quizzes


  before_create do
    self.cohort = Cohort.all.first if cohort.blank?
  end
end
