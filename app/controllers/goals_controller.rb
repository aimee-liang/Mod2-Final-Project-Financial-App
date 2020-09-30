class GoalsController < ApplicationController
    before_action :find_goal, only: [:show, :edit, :update, :destroy]

    def index
        @user = @current_user
    end

    def show
        @goal = Goal.find(params[:id])
    end

    def new
        @goal = Goal.new
    end

    def create
        @user = @current_user
        @goal = Goal.create(title: goals_params[:title], amount: goals_params[:amount], user_id: @user.id)
        
        if @goal.valid?
            @goal.save
            flash[:success] = "You've created one new goal!"
            redirect_to goals_path
        else
            flash[:my_errors] = @goal.errors.full_messages
            redirect_to new_goal_path
        end
    end

    def edit
    end

    def update
        @goal.update(goals_params)
        redirect_to goal_path(@goal)
    end

    def destroy
        @goal.destroy
        redirect_to goals_path
    end

private

    def find_goal
        @goal = Goal.find(params[:id])
    end

    def goals_params
        params.require(:goal).permit(:title, :amount)
    end

end