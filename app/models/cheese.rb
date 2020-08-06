class Cheese < ApplicationRecord
    has_one_attached :item_picture
    has_many :orders

    scope :filter_by_cheese_type, -> (cheese_type) { where cheese_type: cheese_type }
    scope :filter_by_rennet, -> (rennet) { where rennet_coagulat: rennet }
    scope :filter_by_rind, -> (rind) { where rind: rind }
    scope :filter_by_milk, -> (milk) { where milk: milk }

end
