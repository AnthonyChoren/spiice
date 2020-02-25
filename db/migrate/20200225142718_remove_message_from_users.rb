class RemoveMessageFromUsers < ActiveRecord::Migration[5.2]
  def change
     remove_column :users, :message, :string
  end
end
