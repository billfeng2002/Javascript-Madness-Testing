class Concert < ApplicationRecord
    has_many :concert_users
    has_many :users, through: :concert_users
    belongs_to :orchestra
    belongs_to :concert_hall
    has_many :repertoires

    def compareTime

    end

    def popularity

    end

    def self.future_concerts

    end

    def self.past_concerts

    end

end
