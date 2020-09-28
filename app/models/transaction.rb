class Transaction < ApplicationRecord
    belongs_to :investments
    belongs_to :users
end
