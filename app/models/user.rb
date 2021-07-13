class User < ApplicationRecord
    has_many :concert_users
    has_many :concerts, through: :concert_users
    has_many :orchestras, through: :concerts
    has_many :concert_halls, through: :concerts
end
