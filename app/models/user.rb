class User < ApplicationRecord
  has_many :reviews
  has_many :vinyls, through: :reviews
end
