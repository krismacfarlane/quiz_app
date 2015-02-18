class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  'name',          null: false
      t.string  'email',         null: false
      t.string  :password_digest
      t.timestamps
      t.references :cohorts, :default => 0
    end
  end
end
