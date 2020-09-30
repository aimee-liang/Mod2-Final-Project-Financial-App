class RemoveGoalFromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :goal, :string
  end
end
