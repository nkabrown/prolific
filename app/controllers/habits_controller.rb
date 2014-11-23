class HabitsController < ApplicationController
  before_filter :authenticate
  before_action :set_habit, only: [:edit, :update]

  def index
    @habits = current_user.habits
    @mottos = current_user.mottos
  end

  def new
    @habit = Habit.new
  end

  def create
    current_user.habits.create(habit_params)
    redirect_to root_path
  end

  def edit

  end

  def update
    @habit.update_attributes(habit_params)
    redirect_to root_path
  end

  private

    def habit_params
      params.require(:habit).permit(:goal, :step, :routine)
    end

    def set_habit
      @habit = Habit.find(params[:id])
    end

end
