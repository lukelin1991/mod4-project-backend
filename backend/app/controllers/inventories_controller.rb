class InventoriesController < ApplicationController
    def create
        inventory = Inventory.create(inventory_params)
        render json: inventory
    end

    private
    def inventory_params
        params.permit(:hero_id,:item_id)
    end
end