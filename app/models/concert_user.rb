class ConcertUser < ApplicationRecord
    belongs_to :user
    belongs_to :concert
    validate :no_duplicates

    def no_duplicates
        if(ConcertUser.find_by(user:user, concert: concert))
            errors.add(:list, "already has concert")
        end
    end
end
