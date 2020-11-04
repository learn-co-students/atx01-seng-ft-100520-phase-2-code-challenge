class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, :guest_id, :episode_id, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than: 0, less_than: 6 }
  validates :guest_id, uniqueness: true
  
end
