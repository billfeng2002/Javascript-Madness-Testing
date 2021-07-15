class Concert < ApplicationRecord
    has_many :concert_users
    has_many :users, through: :concert_users
    belongs_to :orchestra
    belongs_to :concert_hall
    has_many :repertoires

    def passed? #whether the concert already happened

    end

    def num_user_interested #counts the number of users added this

    end

    def self.future_concerts

    end

    def self.past_concerts

    end

    def self.sorted_by_date

    end

end
