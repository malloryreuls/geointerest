require 'spec_helper'

describe InterestGroupsController do

	let(:valid_attributes) {{ :name => "Surf Spots" }}

	describe "GET 'index'" do

		it "should render out the index template" do
			get 'index'
			expect(response).to render_template :index
		end
	end

end