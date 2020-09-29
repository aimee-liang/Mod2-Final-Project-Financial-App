class GoalsController < ApplicationController
    before_action :find_goal, only: [:show, :edit, :update, :destroy]
        # gets a little confusing in goals_params, but I'm ok with it if you are/not sure if there'll be issues

    def index
        @goals = Goal.all
    end

    def show
    end

    def new
        @goal = Goal.new
    end

    def create
        goal = Goal.create(goals_params)
        
        if goal.valid?
            goal.save
            flash[:success] = "You've one new goal!"
            redirect_to goal_path(goal)
        else
            flash[:errors] = goal.errors.full_messages
            redirect_to new_goals_path
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
        params.require(:goal).permit(:goal, :amount)
    end

end