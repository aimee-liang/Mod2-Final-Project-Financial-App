class InvestmentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :stocks, :stocks_form]

    def index
        @investments = Investment.all
        @ticker = ""
    end

    def show
    end
    
    def new 
        @investment = Investment.new
        @stock_quote = params[:stock]
    end  

    def create 
        price = investment_params[:price].to_f
        if (price < @current_user.balance)
            @investment = Investment.create(investment_params)
            session[:investment] = @investment.id
            redirect_to investments_path
        else
            flash[:my_errors] = ["We're sorry you do not have enough funds to purchase this stock"]
            redirect_to stocks_form_path
        end 
    end 

    def stocks
        begin
            client = IEX::Api::Client.new(
                publishable_token: 'pk_1f8c94d01b95418487f25d4f8b609c9e',
                endpoint: 'https://cloud.iexapis.com/v1')
            
            @stock_quote = client.quote(params[:ticker])
        rescue Exception => e
            # TODO add error handling and flash
        end
    end 

    private 

    def investment_params
        params.require(:investment).permit!
    end

    
end