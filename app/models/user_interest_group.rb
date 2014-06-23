class UserInterestGroup < ActiveRecord::Base
	belongs_to :user
	belongs_to :interest_group
	validates_presence_of :interest_group_id, :user_id
end
