class Marker < ActiveRecord::Base
  belongs_to :interest_group
  geocoded_by :address
  after_validation :geocode

  def self.nearme(loc)

  	# allmarkers = Marker.all
  	# @mygroups = current_user.interest_groups

  	# @mygroups.each do |i|
  	# 	i.markers.each do |m| 
  	# 		m.title
  	# 	end
  	# end

  	# @mygroups.near(loc, 10)

  	Marker.near(loc, 10)

  end

end
