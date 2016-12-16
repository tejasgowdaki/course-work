class CreateCourseRatings < ActiveRecord::Migration
  def change
    create_table :course_ratings do |t|
      t.integer :rating
      t.integer :student_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
