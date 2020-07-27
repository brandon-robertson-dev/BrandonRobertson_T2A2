class Store < ApplicationRecord
    has_many :cheeses, dependent: :destroy
end
