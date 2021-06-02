class Review < ApplicationRecord
  belongs_to :user
  belongs_to :vinyl

  def reviewed_vinyl
    self.vinyl
  end
end
