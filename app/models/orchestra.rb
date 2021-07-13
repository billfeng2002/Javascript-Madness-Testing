class Orchestra < ApplicationRecord
    has_many :concerts
    has_many :concert_halls, through: :concerts
end
