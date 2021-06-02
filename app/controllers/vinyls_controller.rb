class VinylsController < ApplicationController

  before_action :find_vinyl, only: [:show]

  def index
    vinyls = Vinyl.all
    render json: vinyls
  end

  def show
  end

  def create
    vinyl = Vinyl.create(vinyl_params)
    render json: vinyl
  end

  def find_vinyl
    vinyl = Vinyl.find(params[:id])
    render json: vinyl
  end

  private
  
  def vinyl_params
    params.permit(:band_name, :album_title, :image_url, :year_released, :in_production)
end

end
