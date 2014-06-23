require 'spec_helper'

describe InterestGroupsController do

	describe "GET show" do
		let(:valid_attributes) { { 
			:name => "Farmer's Markets", 
			:user_id => "3" } }

		it "should show all of the details of the interest group" do
			igroup = InterestGroup.create! valid_attributes
			get :show, id: igroup.id
			expect(response.status).to eq(200)
			expect(assigns(:interest_groups)).to eq(nil)
		end

	end

end