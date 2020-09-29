class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :login, :handle_login]

    def new
        @user = User.new
    end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user] = @user.id
            redirect_to users_path
        else
            redirect_to new_user_path
        end
    end 

    def login
    end

    def handle_login
        @user = User.find_by(name: params[:name])

        if @user && user.authenticate(params[:password])
            session[:user] = @user.id
            redirect_to users_path
        else 
            flash[:error] = "Incorrect Username or Password"
            redirect_to login_path
        end 
    end

    def logout
        session[:user] == nil
        redirect_to login_path
    end

private

    def user_params
        params.require(:user).permit!
    end

end