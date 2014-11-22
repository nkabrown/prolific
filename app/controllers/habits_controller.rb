class HabitsController < ApplicationController
  before_filter :authenticate

  def index
    @habits = current_user.habits
    @mottos = Motto.all
  end

  def new
    @habit = Habit.new
  end

  def create
    current_user.habits.create(habit_params)
    redirect_to root_path
  end

  private

    def habit_params
      params.require(:habit).permit(:goal, :step, :routine)
    end

end
