class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :place_building_streat
      t.integer :pincode

      t.timestamps
    end
  end
end
