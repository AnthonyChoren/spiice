class AddAcceptedToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :accepted, :boolean
  end
end
