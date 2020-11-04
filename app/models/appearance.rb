class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates_inclusion_of :rating, :in => 1..5, :message => "must be within 1-5"
    validates :guest_id, presence: true
    validates_uniqueness_of :guest_id, scope: :episode_id 
end
