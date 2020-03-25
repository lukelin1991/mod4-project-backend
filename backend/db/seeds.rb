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

# Weapons
azurite_dagger = Item.create({name: "Azurite dagger",itemtype: "buns", damage: 3, defense: 0, image: "azurite-dagger.png", value: 100})
flamberge = Item.create({name: "Flamberge",itemtype: "buns", damage: 4, defense: 0, image: "flamberge.png", value: 150})
sword = Item.create({name: "Sword",itemtype: "buns", damage: 5, defense: 0, image: "sword.png", value: 200})
wood_dagger = Item.create({name: "Wood dagger",itemtype: "buns", damage: 1, defense: 0, image: "wood-dagger.png", value: 50})

# Armor 
boots = Item.create({name: "Boots",itemtype: "Armor", damage: 0, defense: 1, image: "boots.png", value: 50})
golden_gauntlets = Item.create({name: "Golden Gauntlets",itemtype: "Armor", damage: 0, defense: 5, image: "golden_gauntlets.png", value: 200})
golden_sheild = Item.create({name: "Golden Sheild",itemtype: "Armor", damage: 0, defense: 8, image: "golden_sheild.png", value: 250})
helmet = Item.create({name: "Helmet",itemtype: "Armor", damage: 0, defense: 3, image: "helmet.png", value: 100})
platebody = Item.create({name: "Plate(body)",itemtype: "Armor", damage: 0, defense: 3, image: "platebody.png", value: 100})
platelegs = Item.create({name: "Plate(legs)",itemtype: "Armor", damage: 0, defense: 3, image: "platelegs.png", value: 100})
wood_shield = Item.create({name: "Wood Shield",itemtype: "Armor", damage: 0, defense: 2, image: "wood_shield.png", value: 50})


inventory = Inventory.create([{item_id: sword.id, equipt?: true},{item_id: boots.id},{item_id: helmet.id},{item_id: platebody.id}])

signe.heros.create([{name: 'Luke',gold: 100, atk:5, health: 3, inventories: inventory},{name:'Leizl',gold:100,atk:5,health:3},
    {name:'Otha',gold:100,atk:5,health:3},{name:'Eric',gold:100,atk:5,health:3},{name:'Tyler',gold:100,atk:5,health:3}])

merchandise= ShopItem.create([{item_id: sword.id},{item_id: flamberge.id},{item_id: golden_gauntlets.id},{item_id: golden_sheild.id}])
flatirons_wares = Shop.create({name: "Flatiron Wares", shop_items: merchandise})
