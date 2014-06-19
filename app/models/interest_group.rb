class InterestGroup < ActiveRecord::Base

  has_many :markers
  has_many :users, through: :user_interest_group

   def self.nearme(loc)

  	InterestGroup.first.markers.near(loc, 10)

  end

end
