class WelcomeController < ApplicationController
  def index
  	@igroups = InterestGroup.all
  	@markers = Marker.nearme
  end
end
