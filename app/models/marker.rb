class Marker < ActiveRecord::Base
  belongs_to :interest_group
  geocoded_by :address
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude
after_validation :reverse_geocode

  def self.nearme(loc)

  	Marker.near(loc, 10)

  end

end
