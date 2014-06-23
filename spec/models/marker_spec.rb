 require 'spec_helper'

 describe Marker, :type => :model do
 	
 	it 'is invalid without a title' do
 	unnamed = Marker.new(title: "" )
 	expect(unnamed).to be_invalid
 	end

 	it 'is invalid without a description' do
 	noid = Marker.new(title: "New Marker", description: "" )
 	expect(noid).to be_invalid
 	end

 	it 'is invalid without a address' do
 	noid = Marker.new(title: "New Marker", address: "" )
 	expect(noid).to be_invalid
 	end

 	it 'is invalid without a interest_group_id' do
 	noid = Marker.new(title: "New Marker", interest_group_id: "" )
 	expect(noid).to be_invalid
 	end

 	it 'should have belong to an InterestGroup' do
	@InterestGroup  = InterestGroup.create(name: "Coffee Shops", user_id:"1", id:"3");
    @marker = Marker.new(title: 'Groundworks', description: "good coffee", address:"234 Airline Dr.", interest_group_id: "3")
    @InterestGroup.markers << @marker

	@marker.interest_group_id.should == @InterestGroup.id
	end

 end