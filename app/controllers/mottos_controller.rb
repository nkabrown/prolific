class MottosController < ApplicationController
  before_filter :authenticate

  def new
    @motto = Motto.new
  end

  def create
    current_user.mottos.create(motto_params)
    redirect_to root_path
  end

  private

    def motto_params
      params.require(:motto).permit(:content)
    end

end
