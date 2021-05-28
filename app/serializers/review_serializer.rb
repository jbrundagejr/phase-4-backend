class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :rating, :user_id, :vinyl_id

  belongs_to :vinyl
  belongs_to :user

end
