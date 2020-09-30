class User < ApplicationRecord
    has_many :goals
    has_many :transactions
    has_many :investments, through: :transactions

    validates :name, presence: true
    validates :email_address, presence: true
    validates :email_address, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :password, presence: true, length: {
        minimum: 7
    }

    has_secure_password
end
