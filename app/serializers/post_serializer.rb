class PostSerializer < ActiveModel::Serializer
  attributes :id, :message, :image_url, :user_id
end
