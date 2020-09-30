class TransactionsController < ApplicationController

    def index
        @transactions = Transaction.all 
    end 

    def show
        @transaction = Transaction.find(params[:id])
    end

    def create
        transaction = Transaction.create(transaction_params)

        if transaction.valid?
            redirect_to transactions_page
            # what would it redirect to, if anything?
        # else
        #     flash[:my_errors] = transactions.errors.full_messages
        #     redirect_to 
        end
    end

end