class User < ApplicationRecord
    has_secure_password
    has_many :concert_users
    has_many :concerts, through: :concert_users
    has_many :orchestras, through: :concerts
    has_many :concert_halls, through: :concerts
    validate :valid_email
    validates :username, uniqueness: {message: "is already taken!"}, presence: :true
    validates :email, uniqueness: {message: "is already taken!"}, presence: :true
    validates :age, inclusion: {in: 1..150, message:"must be an integer from 1 to 150"}
    def valid_email
        unless(email =~ URI::MailTo::EMAIL_REGEXP)
            errors.add(:email, "must be valid")
        end
    end

    def full_name
        first_name+ " " +last_name
    end

    def has_concert?(concert)
        self.concerts.include?(concert)
    end

    def favorite_concert_hall
        self.sorted_concert_halls&.first
    end

    def favorite_orchestra
        self.sorted_orchestras&.first
    end

    def sorted_concert_halls
        self.concerts&.group(:concert_hall).count.to_a.sort_by{|concert_pair| concert_pair[1]}.reverse
    end

    def sorted_orchestras
        self.concerts&.group(:orchestra).count.to_a.sort_by{|concert_pair| concert_pair[1]}.reverse
    end
end
