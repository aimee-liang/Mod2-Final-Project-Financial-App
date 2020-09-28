class Investment < ApplicationRecord
    has_many :mytransactions
    has_many :users, through: :mytransactions
end
