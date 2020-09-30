class Transaction < ApplicationRecord
    belongs_to :investments
    belongs_to :users

    # need methods to update balance
end
