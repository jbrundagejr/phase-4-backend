class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :rating, :user_id, :vinyl_id, :reviewed_vinyl

  belongs_to :vinyl
  belongs_to :user

end
