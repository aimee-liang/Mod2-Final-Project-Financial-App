class Transaction < ApplicationRecord
    belongs_to :investments
    belongs_to :users

    # validations?

    # bank account method to reveal only last four digits
    # def last_four_numbers
    # end

    # need methods to update balance
end
