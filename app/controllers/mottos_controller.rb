class MottosController < ApplicationController

  def new
    @motto = Motto.new
  end

  def create
    @motto = Motto.create(motto_params)
    redirect_to habits_path
  end

  private

    def motto_params
      params.require(:motto).permit(:content, :email)
    end

end
