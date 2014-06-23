 require 'spec_helper'

 describe InterestGroup, :type => :model do
 	
 	it 'is invalid without a name' do
 	unnamed = InterestGroup.new(name: "" )
 	expect(unnamed).to be_invalid
 	end

 	it 'is invalid without a user_id' do
 	noid = InterestGroup.new(name: "Interest Group", user_id: "" )
 	expect(noid).to be_invalid
 	end


	it 'should have many markers' do
	@InterestGroup  = InterestGroup.create(name: "Coffee Shops", user_id:"1");
    @marker = Marker.new(title: 'Groundworks', description: "good coffee", address:"234 Airline Dr.", interest_group_id: "3")
    @InterestGroup.markers << @marker

	@InterestGroup.markers.should == [@marker]
	end

 	describe "#capital_name" do

		it "capitalizes the first letter of each word" do
		igroup = InterestGroup.new(name: "coffee shops santa monica")
		expect(igroup.capital_name).to eq "Coffee Shops Santa Monica"
		end

	end


 end