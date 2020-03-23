class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros
    end

    def create 
        hero = Hero.create(hero_params)
        render json: hero
    end

    private
    def hero_params
        params.permit(:name,:gold,:atk,:health)
    end
end
