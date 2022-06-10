class AddStudentIdToAddress < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :student_id, :integer
  end
end
