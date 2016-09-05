class AddStuffToTwats < ActiveRecord::Migration[5.0]
  def change
    add_column :twats, :description, :text
    add_column :twats, :active, :boolean
    add_column :twats, :link, :string
    add_column :twats, :twot_number, :intenger
  end
end
