class AddTimingToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :time, :datetime
  end
end
