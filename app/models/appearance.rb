class Appearance < ApplicationRecord
    belongs_to :guest_id
    belongs_to :episode_id

    validates :rating, :numericality => {:greater_than_orequal_to => 1}
    validates :rating, :numericality => {:less_than_or_equal_to => 5}

end