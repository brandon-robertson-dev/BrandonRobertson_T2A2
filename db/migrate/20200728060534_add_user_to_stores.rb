class AddUserToStores < ActiveRecord::Migration[6.0]
  def change
    add_reference :stores, :user, foreign_key: true
  end
end
