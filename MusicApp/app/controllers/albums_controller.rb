class AlbumsController < ApplicationController

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to band_url(@album.band.id)
    else
      flash[:errors] = ["Error! No album created!"]
      render :new
    end
  end


  private

    def album_params
      params.require(:album).permit(:name, :band_id, :live_recording)
    end

end
