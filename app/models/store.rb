class Store < ApplicationRecord
    has_many :cheeses, dependent: :destroy
    has_many :feedbacks, dependent: :destroy
    belongs_to :user
    has_one_attached :store_picture
end