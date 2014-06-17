class Marker < ActiveRecord::Base
  belongs_to :interest_group
  geocoded_by :address

  def self.nearme(loc)

  	Marker.near(loc, 50)

  end

end
