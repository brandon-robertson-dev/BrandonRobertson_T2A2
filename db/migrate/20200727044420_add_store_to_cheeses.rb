class AddStoreToCheeses < ActiveRecord::Migration[6.0]
  def change
    add_reference :cheeses, :store, null: false, foreign_key: true
  end
end
