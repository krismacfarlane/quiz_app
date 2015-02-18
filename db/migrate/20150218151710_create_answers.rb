class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
       t.string     'content'
      t.boolean     'is_picked', :default => false
      t.references  'questions'
    end
  end
end
