class UsersController < ApplicationController

    def signup 
        user = User.new(user_params)
        if user.save
        render json: user
        else
            render json: {error: user.errors.full_messages},  status: 403
        end 
    end

    private

    def user_params
        params.permit(:email, :bio, :password)
    end
end
