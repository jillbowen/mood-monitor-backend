class Day < ApplicationRecord
    has_many :moods

    validates :date, presence: true
end
