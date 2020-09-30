class Goal < ApplicationRecord
    belongs_to :user

    validates :goal, presence: true
    validates :amount, presence: true, numericality: {
        greater_than: 0,
    }
end


# Set method in model so we can calculate how long it would take to save up to this goal on the show page
    # def calculate_time
    # end