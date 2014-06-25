class MarkersController < ApplicationController

  before_action :set_marker, only: [:edit, :update, :show, :destroy]

  def index
    @markers = Marker.all
  end

  def new
    @igroup = InterestGroup.find(params[:interest_group_id])
    @marker = Marker.new
  end

  def create
    @igroup = InterestGroup.find(params[:interest_group_id])
    @marker = @igroup.markers.new(marker_params)
    respond_to do |format|
      if @marker.save
        format.html { redirect_to @igroup, notice: 'Marker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @marker }
      else
        format.html { render action: 'new' }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @igroup = InterestGroup.find(params[:interest_group_id])
  end

  def update
    if @marker.update(marker_params)
      redirect_to interest_group_path(params[:interest_group_id])
    else
      render 'edit'
    end
  end

  def show
    @igroup = InterestGroup.find(params[:interest_group_id])
  end

  def destroy
    @igroup = InterestGroup.find(params[:interest_group_id])
      @marker.destroy
      redirect_to interest_group_path(params[:interest_group_id])
  end

private

  def marker_params
    params.require(:marker).permit(:title, :description, :address, :latitude, :longitude, :avatar, :avatar_file_name, :avatar_content_type, :avatar_file_size)
  end

  def set_marker
    @marker = Marker.find(params[:id])
  end

end
