class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :link
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end
