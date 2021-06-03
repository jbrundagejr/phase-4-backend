class Vinyl < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def average_rating
    return 0 unless reviews.count.positive?
    review_total = self.reviews.sum { |review_instance| review_instance.rating }
      (review_total / self.reviews.length.to_f).round(2)
    # self.reviews.average(:rating).round(2).to_f
  end

end
