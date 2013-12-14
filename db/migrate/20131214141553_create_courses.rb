class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :alias
      t.integer :year

      t.timestamps
    end
  end
end
