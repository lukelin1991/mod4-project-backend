# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Inventory.destroy_all
Hero.destroy_all
Shop.destroy_all
ShopItem.destroy_all

signe = User.create!({username:'Signe', password:'123'})

sword = Item.create({name: "sword", atk: 3, health: 0})
axe = Item.create({name: "axe", atk: 3, health: 0})
armor = Item.create({name: "armor", atk: 0, health: 3})
potion = Item.create({name: "potion", atk: 0, health: 2})

inventory = Inventory.create([{item_id: sword.id, equipt?: true},{item_id: axe.id},{item_id: armor.id},{item_id: potion.id}])

signe.heros.create([{name: 'Luke',gold: 100, atk:5, health: 3, inventories: inventory},{name:'Leizl',gold:100,atk:5,health:3},
    {name:'Otha',gold:100,atk:5,health:3},{name:'Eric',gold:100,atk:5,health:3},{name:'Tyler',gold:100,atk:5,health:3}])

merchandise= ShopItem.create([{item_id: sword.id, price: 100},{item_id: axe.id,price: 100},{item_id: armor.id,price: 200},{item_id: potion.id,price: 50}])
flatirons_wares = Shop.create({name: "Flatiron Wares", shop_items: merchandise})
