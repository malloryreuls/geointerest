class Marker < ActiveRecord::Base
  belongs_to :interest_group
  geocoded_by :address
  after_validation :geocode

  def self.nearme(loc, user)
  	user.markers.near(loc,10)
  end

end
