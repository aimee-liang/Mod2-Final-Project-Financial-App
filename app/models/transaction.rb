class Transaction < ApplicationRecord
    belongs_to :investments
    belongs_to :users

    # validations?
    
    def last_four_numbers
        prints "XXXXXX" + "self.account_number"
    end

    # need methods to update balance

end
