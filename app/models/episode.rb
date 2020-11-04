class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def get_rating
    self.appearances.average(:rating).to_i
  end
end
