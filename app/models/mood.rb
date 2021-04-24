class Mood < ApplicationRecord
  belongs_to :day

  validates :happy_rating, :relaxed_rating, :awake_rating, :calm_rating, :confidence_rating, presence: true
end
