class VinylsController < ApplicationController

  before_action :find_vinyl, only: [:show]

  def index
    vinyls = Vinyl.all
    render json: vinyls
  end

  def show
  end

  def find_vinyl
    vinyl = Vinyl.find(params[:id])
    render json: vinyl
  end

end
