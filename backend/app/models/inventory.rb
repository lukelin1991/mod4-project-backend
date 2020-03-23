class Inventory < ApplicationRecord
    belongs_to :hero
    belongs_to :item
end
