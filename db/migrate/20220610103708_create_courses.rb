class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :duration
      t.string :fees

      t.timestamps
    end
  end
end
