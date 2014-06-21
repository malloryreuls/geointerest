class Marker < ActiveRecord::Base
  belongs_to :interest_group

  # geocode gem that converts address into lat long
  geocoded_by :address
  after_validation :geocode

# function that gets called in our listview controller that passes in our current location and the current user. Only shows markers within 10 miles of current users location.
  def self.nearme(loc, user)
  	user.markers.near(loc,10)
  end

end
