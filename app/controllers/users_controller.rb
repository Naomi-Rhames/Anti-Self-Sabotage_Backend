class UsersController < ApplicationController

    # def signup 
    #     user = User.new(user_params)
    #     if user.save
    #     render_token(user)
    #     else
    #         render json: {error: user.errors.full_messages},  status: 403
    #     end 
    # end

    # def index 
    #     user = User.all
    #     render json: user
    # end

    # def show
    #     user = User.find(params[:id])
    #     if user === fetch_user
    #        render json: user
    #     else
    #         render json: {error: user.errors.full_messages}
    #     end
    # end

    # private

    # def user_params
    #     params.permit(:profile_photo, :email, :username ,:bio, :password)
    # end
end
