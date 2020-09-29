class InvestmentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @investments = Investment.all
        @ticker = ""
    end

    def show
    end
    
    def new 
        @investment = Investment.new
    end  

    def create 
        @investment = Investment.create(investment_params)
            session[:investment] = @investment.id
            redirect_to investments_path
    end 

    private 

    def investment_params
        params.require(:investment).permit!
    end

    def lookup_stock(ticker)
        return client.quote(ticker)
    end 

    client = IEX::Api::Client.new(
          publishable_token: 'pk_1f8c94d01b95418487f25d4f8b609c9e ',
          secret_token: 'sk_b66d9fe7e685456ea64c8d3ae2d86560',
          endpoint: 'https://cloud.iexapis.com/v1'
        )
end