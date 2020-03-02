class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :accepted
      t.date :created_at
      t.string :status, default: 0

      t.timestamps
    end
  end
end
