class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :price
      t.string :progress
      t.date :start
      t.date :deadline

      t.timestamps
    end
  end
end
