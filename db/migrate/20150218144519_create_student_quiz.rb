class CreateStudentQuiz < ActiveRecord::Migration
  def change
    create_table :student_quizzes do |t|
      t.references :students
      t.references :quizzes
    end
  end
end
