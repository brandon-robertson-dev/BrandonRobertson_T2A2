class AddStoreToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :store, foreign_key: true
  end
end
