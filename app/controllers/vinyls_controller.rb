class VinylsController < ApplicationController

  def index
    vinyls = Vinyl.all
    render json: vinyls
  end

end
