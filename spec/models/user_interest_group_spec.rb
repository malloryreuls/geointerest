require 'spec_helper'

describe UserInterestGroup do

	it 'is invalid without a user_id' do
 	nouid = UserInterestGroup.new(user_id: "" )
 	expect(nouid).to be_invalid
 	end

 	it 'is invalid without a interest_group_id' do
 	noigroupid = UserInterestGroup.new(interest_group_id: "")
 	expect(noigroupid).to be_invalid
 	end

end
