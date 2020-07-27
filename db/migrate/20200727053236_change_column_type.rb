class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    add_monetize :cheeses, :price
  end
end
