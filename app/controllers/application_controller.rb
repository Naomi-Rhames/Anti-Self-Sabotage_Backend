class ApplicationController < ActionController::Base

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
    end

    def fetch_user
        User.find(decoded_token["user_id"])
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages.to_sentence}, status: :unprocessable_entity
    end

    def render_token(user)
        render json: { user: ActiveModelSerializers::SerializableResource.new(user, serializer: UserSerializer), token: encode_token(user.id) }
    end

    private

    def fetch_token
        request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode(fetch_token, ENV["JWT_SECRET"])[0]
    end
end
