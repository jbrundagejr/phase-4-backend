class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :rating, :user_id, :vinyl_id
end
