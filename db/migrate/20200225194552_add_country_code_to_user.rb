class AddCountryCodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country_code, :string
    add_column :users, :state_code, :string
  end
end
