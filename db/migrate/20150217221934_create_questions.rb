class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string     'content'
      t.boolean    'got_right', :default => false
      t.integer    'points'   , :default => 0
      t.references 'quizzes'
    end
  end
end
