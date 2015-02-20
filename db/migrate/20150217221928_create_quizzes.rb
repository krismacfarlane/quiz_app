class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
       t.string     'name',           null: false
       t.integer    'grade',          :default => 0
       t.boolean    'has_grade',      :default => false
       t.boolean    'been_taken',     :default => false
       t.references 'students'
       t.references 'cohorts'
       t.timestamps
    end
  end
end
