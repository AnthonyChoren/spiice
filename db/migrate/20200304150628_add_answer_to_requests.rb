class AddAnswerToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :answer, :string
  end
end
