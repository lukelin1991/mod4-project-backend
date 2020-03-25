class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :itemtype, :damage, :defense, :image, :value
end
