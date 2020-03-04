class AddSeenToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :seen, :boolean
  end
end
