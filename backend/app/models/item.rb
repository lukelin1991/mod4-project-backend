class Item < ApplicationRecord
    has_many :inventories
    has_many :heros, through: :inventories
    has_many :shop_items
    has_many :shops, through: :shop_items
end
