class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string  'name',          null: false
      t.references :instructors, null: false
      t.string 'room',            null: false
      t.string 'producer',        null: false
      t.timestamps
    end
  end
end
