class AddMessageToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :message, :string
  end
end
