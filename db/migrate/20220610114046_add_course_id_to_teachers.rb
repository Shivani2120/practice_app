class AddCourseIdToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :course_id, :integer
  end
end
