class InterestGroup < ActiveRecord::Base
  
has_many :user_interest_groups
  has_many :markers
  has_many :users, through: :user_interest_groups

   def self.nearme(loc)

  	InterestGroup.first.markers.near(loc, 10)

  end

end
