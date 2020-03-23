class ShopItemSerializer < ActiveModel::Serializer
  attributes :id, :merchandise, :price
  def merchandise
   {item: self.object.shop_item.item.name}
  end
end
