class Marker < ActiveRecord::Base
  belongs_to :interest_group
  geocoded_by :address

  def self.nearme
  	Marker.near('Santa Monica, CA, US', 20)
  end

end
