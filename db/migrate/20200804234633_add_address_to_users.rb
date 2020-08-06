class AddAddressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :street_address, :string, null: false
  end
end
