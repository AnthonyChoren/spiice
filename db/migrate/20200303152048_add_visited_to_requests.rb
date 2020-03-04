class AddVisitedToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :visited, :boolean
  end
end
