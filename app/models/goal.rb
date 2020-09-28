class Goal < ApplicationRecord
    belongs_to :user

    validates :goal, presence: true
    validates :amount, presence: true, numericality: {
        greater_than: 0,
        only_float: true
    }
end
