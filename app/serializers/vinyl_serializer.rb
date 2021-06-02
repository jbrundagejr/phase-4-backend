class VinylSerializer < ActiveModel::Serializer
  attributes :id, :band_name, :album_title, :image_url, :year_released, :in_production
  methods :average_rating
  
  has_many :reviews
  has_many :users, through: :reviews
end
