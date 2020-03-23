class UsersController < ApplicationController
  

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        end

    end

    private
    def user_params
        params.permit(:username, :password)
    end
end
