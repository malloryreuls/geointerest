class MapviewsController < ApplicationController
  def index
  	@igroups = InterestGroup.all
  	@markers = Marker.all
  end
end
