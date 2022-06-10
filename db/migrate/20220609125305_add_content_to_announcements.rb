class AddContentToAnnouncements < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :content, :string
  end
end
