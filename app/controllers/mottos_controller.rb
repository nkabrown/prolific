class MottosController < ApplicationController
  before_filter :authenticate
  before_action :set_motto, only: [:edit, :update, :destroy]

  def new
    @motto = Motto.new
  end

  def create
    current_user.mottos.create(motto_params)
    redirect_to habits_path
  end

  def edit

  end

  def update
    @motto.update_attributes(motto_params)
    redirect_to habits_path
  end

  def destroy
    @motto.destroy
    redirect_to habits_path
  end

  private

    def motto_params
      params.require(:motto).permit(:content)
    end

    def set_motto
      @motto = Motto.find(params[:id])
    end
end
