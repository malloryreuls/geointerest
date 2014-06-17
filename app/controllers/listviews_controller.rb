class ListviewsController < ApplicationController
  def index
  	@igroups = InterestGroup.all
  	if cookies[:lat_lng] == nil
  		@location = [34.0131161, -118.4949707]
  	else
  		@location = cookies[:lat_lng].split(",").map(&:to_f)
  	end
  	@markers = Marker.nearme(@location)
  end


end
