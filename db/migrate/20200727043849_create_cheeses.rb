class CreateCheeses < ActiveRecord::Migration[6.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.text :description
      t.float :price
      t.binary :rennet_coagulat
      t.string :location
      t.string :cheese_type
      t.string :rind
      t.string :milk
      t.string :size
      t.integer :availability

      t.timestamps
    end
  end
end
