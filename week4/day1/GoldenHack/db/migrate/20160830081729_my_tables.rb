class MyTables < ActiveRecord::Migration[5.0]
  def change
  	add_column :twots, :user_id, :intenger
  end
end
