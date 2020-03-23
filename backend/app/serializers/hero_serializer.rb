class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :gold, :atk, :health, :player, :inventory
  def player
    {username: self.object.user.username}
  end

  def inventory
    self.object.inventories.map do |inventory|
    {itemName: inventory.item.name,
    atk: inventory.item.atk,
    health: inventory.item.health,
    equipt?: inventory.equipt?}
    end
  end
end
