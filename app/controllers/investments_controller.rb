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
    end  

    def create 
        @investment = Investment.create(investment_params)
            session[:investment] = @investment.id
            redirect_to investments_path
    end 

    def stocks
        begin
            puts "creating iex client"
            client = IEX::Api::Client.new(
                publishable_token: 'pk_1f8c94d01b95418487f25d4f8b609c9e',
                endpoint: 'https://cloud.iexapis.com/v1')
            puts client
            @stock_quote = client.quote(params[:ticker])
        rescue Exception => e
            # TODO add error handling and flash
            puts e
        end
    end 

    private 

    def investment_params
        params.require(:investment).permit!
    end

    
end