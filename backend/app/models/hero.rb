class Hero < ApplicationRecord
    belongs_to :user
    has_many :inventories
    has_many :items, through: :inventories
end
