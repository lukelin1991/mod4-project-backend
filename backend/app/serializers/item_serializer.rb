class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :atk, :health
end
