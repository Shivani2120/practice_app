class AddStudentIdToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :student_id, :integer
  end
end
