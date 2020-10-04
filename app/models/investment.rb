class Investment < ApplicationRecord
    has_many :transactions
    has_many :users, through: :transactions

#     def total_price(quantity)
#         total = 0
#         total += self.stock_quote.delayed_price * quantity
#         return total
#     end

#     # helper method
#     def update_balance
#         @user.transaction.balance = @user.transaction.balance - self.total_price
#     end

# private

#     def enough_funds
#         if @user.transaction.balance < self.total_price
#             flash[:invest_failure] << "You do not have enough funds to purchase this stock."
#         elsif @user.transaction.balance >= self.total_price
#             flash[:success] << "Purchase completed"
#             self.update_balance
#         end
#     end

end