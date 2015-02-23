class Student < ActiveRecord::Base
  has_secure_password

  belongs_to :cohort
  has_many :quizzes


  before_create do
    self.cohort = Cohort.all.first if cohort.blank?
  end

  # def self.save_data_from_api
  #   response = HTTParty.get('http://104.131.73.180/api/v1/students')
  #   students = response['students'].map do |student|
  #     s = Student.new
  #     s.name = "#{student['data']['first']} #{student['data']['last']}"
  #     s.email = student['contact']['email']
  #     s.save
  #     s
  #   end
  #   students.select(&:persisted?)

  # end
end
