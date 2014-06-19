class InterestGroup < ActiveRecord::Base
  belongs_to :user

  has_many :markers

   def self.nearme(loc)

  	InterestGroup.first.markers.near(loc, 10)

  end

end
