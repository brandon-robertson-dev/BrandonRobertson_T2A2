class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :shipping_address
      t.references :cheese, null: false, foreign_key: true
      t.string :cheese_title
      t.string :cheese_price

      t.timestamps
    end
  end
end
