class ConcertHall < ApplicationRecord
    has_many :concerts
    has_many :orchestras, through: :concerts
    has_many :users, through: :concerts

    def past_concerts
        Concert.past_concerts.select{|concert| concert.concert_hall == self}
    end

    def future_concerts
        Concert.future_concerts.select{|concert| concert.concert_hall == self}
    end
end