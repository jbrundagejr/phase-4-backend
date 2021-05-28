class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image_url

  has_many :reviews
  has_many :vinyls, through: :reviews
end
