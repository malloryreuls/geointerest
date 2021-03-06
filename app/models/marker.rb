class Marker < ActiveRecord::Base

validates_presence_of :title, :description, :interest_group_id, :address

has_attached_file :avatar, :styles => { :original => ['1920x1680>', :jpg, :convert_options => "-auto-orient", :quality => 100], :large => ['600x600>', :jpg, :convert_options => "-auto-orient", :quality => 100] }, :default_url => "missing.jpg"

validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :interest_group

  # geocode gem that converts address into lat long
  geocoded_by :address
  after_validation :geocode

# function that gets called in our listview controller that passes in our current location and the current user. Only shows markers within 10 miles of current users location.
  def self.nearme(loc, user)
  	user.markers.near(loc,10)
  end

end
