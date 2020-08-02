class AddStripeFieldsToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :uid, :string
    add_column :stores, :provider, :string
    add_column :stores, :access_code, :string
    add_column :stores, :publishable_key, :string
  end
end
