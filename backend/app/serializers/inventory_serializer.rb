class InventorySerializer < ActiveModel::Serializer
  attributes :item
  def item
    {itemName: self.object.inventory.item.name,
      atk: self.object.inventory.item.atk,
      health: self.object.inventory.item.health,
      equipt?: self.object.inventory.equipt?}
  end
end
