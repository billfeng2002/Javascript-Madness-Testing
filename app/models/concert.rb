class Concert < ApplicationRecord
    has_many :concert_users
    has_many :users, through: :concert_users
    belongs_to :orchestra
    belongs_to :concert_hall
    has_many :repertoires
end
