class User < ApplicationRecord
    has_many :goals
    has_many :mytransactions
    has_many :investments, through: :mytransactions
end
