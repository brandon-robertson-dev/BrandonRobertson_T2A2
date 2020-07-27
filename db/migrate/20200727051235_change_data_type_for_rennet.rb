class ChangeDataTypeForRennet < ActiveRecord::Migration[6.0]
  def change
    change_column(:cheeses, :rennet_coagulat, :string)
  end
end
