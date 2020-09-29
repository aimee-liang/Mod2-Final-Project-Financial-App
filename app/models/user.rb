class User < ApplicationRecord
    has_many :goals
    has_many :transactions
    has_many :investments, through: :transactions

    validates :name, presence: true
    validates :password, presence: true, numericality: {
        greater_than: 6
    }

    has_secure_password

end
