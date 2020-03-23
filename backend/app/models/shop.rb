class Shop < ApplicationRecord
    has_many :shop_items
    has_many :items, through: :shop_items
end
