class UserInterestGroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :interest_group
end
