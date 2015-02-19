class Quiz < ActiveRecord::Base

  belongs_to :cohort
  belongs_to :student
  has_many :questions

end
