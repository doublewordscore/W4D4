class TracksController < ApplicationController

  def show
    @track = Track.find(params[:id])
  end

  def new
    render :new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      render :show
    else
      flash[:errors] = ["Error! No track created!"]
      render :new
    end
  end



  private

  def track_params
    params.require(:track).permit(:name, :album_id, :bonus, :lyrics)
  end



end
