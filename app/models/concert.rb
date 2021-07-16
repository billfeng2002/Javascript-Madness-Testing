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
        self.all.select{|concert| !concert.passed?}
    end

    def self.past_concerts
        self.all.select{|concert| concert.passed?}
    end

    def self.all_concerts
        self.all
    end

    def self.get_view_list(option)
        if(option=="all")
            self.all_concerts
        elsif(option=="past")
            self.past_concerts
        else
            self.future_concerts
        end
    end

    def self.sorted_by_date_asc(option)
        self.get_view_list(option).sort_by{|concert| concert.time}
    end

    def self.sorted_by_date_dec(option)
        self.get_view_list(option).sort_by{|concert| concert.time}.reverse
    end

    def self.sorted_by_recent(option)
        #self.order(updated_at: :desc)
        self.get_view_list(option).sort_by{|concert| concert.updated_at}.reverse
    end

    def self.sorted_by_popularity(option)
        #self.all.sort{|concert| -concert.num_user_interested}
        self.get_view_list(option).sort_by{|concert| concert.num_user_interested}.reverse
    end

    def self.sorted_by_price_asc(option)
        #self.order(price: :asc)
        self.get_view_list(option).sort_by{|concert| concert.price}
    end

    def self.sorted_by_price_dec(option)
        #self.order(price: :desc)
        self.get_view_list(option).sort_by{|concert| concert.price}.reverse
    end
end
