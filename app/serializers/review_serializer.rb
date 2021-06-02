class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :title, :content, :rating

  belongs_to :vinyl
  belongs_to :user

end
