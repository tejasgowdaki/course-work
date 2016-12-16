class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end
