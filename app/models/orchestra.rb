class Orchestra < ApplicationRecord
    has_many :concerts
    has_many :concert_halls, through: :concerts

    def future_concerts
        Concert.future_concerts.select{|concert| concert.orchestra == self}
    end

    def past_concerts
        Concert.past_concerts.select{|concert| concert.orchestra == self}
    end
end
