class BandsController < ApplicationController
  attr_accessor :bands


  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      render :show
    else
      flash[:errors] = ["Error! No band created!"]
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.update(band_params)
    if @band.save
      render :show
    else
      flash[:errors] = ["Error! No band created!"]
      render :edit
    end
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end


end
