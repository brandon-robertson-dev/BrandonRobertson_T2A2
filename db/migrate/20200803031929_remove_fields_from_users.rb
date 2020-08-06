class RemoveFieldsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :uid
    remove_column :users, :provider
    remove_column :users, :access_code
    remove_column :users, :publishable_key
    remove_column :stores, :uid
    remove_column :stores, :provider
    remove_column :stores, :access_code
    remove_column :stores, :publishable_key
  end
end
