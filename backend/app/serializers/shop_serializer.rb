class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :merchandise
  def merchandise
    self.object.shop_items.map do |shopI|
      {item: shopI.item.name,
      price: shopI.price}
      end
  end
end
