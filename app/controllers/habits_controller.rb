class HabitsController < ApplicationController
  before_filter :authenticate

  def index
    @habits = Habit.where(email: current_email)
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.create(habit_params.merge(email: current_email))
    redirect_to root_path
  end

  private

    def habit_params
      params.require(:habit).permit(:goal, :step, :routine)
    end

end
