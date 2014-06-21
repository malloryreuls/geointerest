class ListviewsController < ApplicationController

	before_action :authenticate_user!
	
  def index
    # @user is for the nearme function
    @user = current_user
  # if cookies isn't set, use the default lat long for @location which goes in the nearme function
  	if cookies[:lat_lng] == nil
  		@location = [34.0131161, -118.4949707]
  	else
      # grabs the cookie that gets set in the javascript, splits it at the comma and changes the value to a float to pass into the nearme function
  		@location = cookies[:lat_lng].split(",").map(&:to_f)
  	end
    # passes the currentuser and current location into the geocode nearme function
  	@markers = Marker.nearme(@location, @user)
  end


end
