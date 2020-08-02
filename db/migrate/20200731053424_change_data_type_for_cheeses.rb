class ChangeDataTypeForCheeses < ActiveRecord::Migration[6.0]
  def change
    change_column :cheeses, :price, :integer
  end
end
