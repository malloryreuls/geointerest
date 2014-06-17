class MarkersController < ApplicationController
  def index
    @markers = Marker.all
  end

  def new
  end

  def create
    @marker = Marker.new(marker_params)
    respond_to do |format|
      if @marker.save
        format.html { redirect_to @marker, notice: 'Marker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @marker }
      else
        format.html { render action: 'new' }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def show
    @marker = Marker.find(params[:id])
  end

  def destroy
  end

private

  def marker_params
    params.require(:marker).permit(:title, :description, :address, :latitude, :longitude)
  end

end
