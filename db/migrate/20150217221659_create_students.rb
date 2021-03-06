class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string      'name',          null: false
      t.string      'email',         null: false
      t.string      :password_digest
      t.references  :cohort
      t.timestamps
    end
  end
end
