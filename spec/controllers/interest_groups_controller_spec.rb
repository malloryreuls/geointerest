require 'spec_helper'

describe InterestGroupsController do

	let(:valid_attributes) {{ :name => "Surf Spots" }}

	describe "GET 'index'" do

		it "should render out the index template" do
			get 'index'
			expect(response).to render_template :index
		end
	end

	describe "GET new" do
		before {get :new}

		it "should render out the new template" do
			get 'new'
			expect(response).to render_template :new
		end

		let! :interest_group1 do
		InterestGroup.create! valid_attributes
		end

		let! :interest_group2 do
		InterestGroup.create! valid_attributes
		end

		it "should succeed" do
		get :index
		expect(response).to be_success
		end

		it "should assign interest_group to all interest_group" do
		get :index
		expect(assigns(:interest_group)).to include(interest_group1)
		expect(assigns(:interest_group)).to include(interest_group2)
		end


	end

end