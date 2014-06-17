class WelcomeController < ApplicationController
  def index
  	@igroups = InterestGroup.all
  	@location = cookies[:lat_lng].split(",").map(&:to_f)
  	@markers = Marker.nearme(@location)
  	
  end


end
