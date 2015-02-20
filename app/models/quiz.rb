class Quiz < ActiveRecord::Base

  belongs_to :cohort
  belongs_to :student
  has_many :questions

  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
