class InterestGroup < ActiveRecord::Base

# userinterestgroups because is the join table that stores our foreign keys for user
  has_many :user_interest_groups
  has_many :markers
  belongs_to :user

  # accesses users through our join table
  has_many :users, through: :user_interest_groups



end
