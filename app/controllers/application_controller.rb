class ApplicationController < ActionController::Base

    def render_token(user)
        render json: { user: ActiveModelSerializers::SerializableResource.new(user, serializer: UserSerializer), token: encode_token(user.id) }
    end

end
