class Cheese < ApplicationRecord
    has_one_attached :item_picture

    # has_and_belongs_to_many :shopping_cart
end
