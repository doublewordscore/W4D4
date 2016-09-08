class TracksController < ApplicationController

  def show
    @track = Track.find(params[:id])
    render :show
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

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def update
    @track = Track.update(track_params)
    if @track.save
      render :show
    else
      flash[:errors] = ["Error! Nothing updated!"]
      render :new
    end
  end


  private

  def track_params
    params.require(:track).permit(:name, :album_id, :bonus, :lyrics)
  end



end
