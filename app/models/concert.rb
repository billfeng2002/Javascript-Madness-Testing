class Concert < ApplicationRecord
    has_many :concert_users
    has_many :users, through: :concert_users
    belongs_to :orchestra
    belongs_to :concert_hall
    has_many :repertoires

    def format_date
        self.time.strftime("%m/%d/%Y at %I:%M%p")
    end

    def format_price
        "$#{"%.2f" % self.price}"
    end

    def passed? #whether the concert already happened
        self.time < Time.now
    end

    def num_user_interested #counts the number of users added this
        ConcertUser.select{|joiner| joiner.concert==self}.count
    end

    def self.future_concerts
        self.sorted_by_date.select{|concert| !concert.passed?}
    end

    def self.past_concerts
        self.sorted_by_date.select{|concert| concert.passed?}
    end

    def self.sorted_by_date
        self.order(date: :desc)
    end

    def self.sorted_by_recent
        self.order(updated_at: :desc)
    end

    def self.sorted_by_popularity
        self.all.sort{|concert| -concert.num_user_interested}
    end
end
