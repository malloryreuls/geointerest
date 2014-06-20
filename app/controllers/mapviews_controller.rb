class MapviewsController < ApplicationController

	before_action :authenticate_user!
	
  def index
    @user = current_user
  	@igroups = InterestGroup.all
  	if cookies[:lat_lng] == nil
  		@location = [34.0131161, -118.4949707]
  	else
  		@location = cookies[:lat_lng].split(",").map(&:to_f)
  	end
  	@markers = Marker.nearme(@location, @user)
  end
end
