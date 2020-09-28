class UsersController < ApplicationController

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
    end

private

    def user_params
        params.require(:user).permit!
    end

end