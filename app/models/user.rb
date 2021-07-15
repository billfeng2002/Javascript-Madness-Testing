class User < ApplicationRecord
    has_secure_password
    has_many :concert_users
    has_many :concerts, through: :concert_users
    has_many :orchestras, through: :concerts
    has_many :concert_halls, through: :concerts
    validate :valid_email
    def valid_email
        unless(email =~ URI::MailTo::EMAIL_REGEXP)
            errors.add(:email, "must be valid")
        end
    end

    def full_name
        first_name+ " " +last_name
    end
end
