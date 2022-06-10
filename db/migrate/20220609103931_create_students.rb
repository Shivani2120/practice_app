class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :contact
      t.string :rollnumber

      t.timestamps
    end
  end
end
