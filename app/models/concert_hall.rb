class ConcertHall < ApplicationRecord
    has_many :concerts
    has_many :orchestras, through: :concerts
    has_many :users, through: :concerts
end
