require 'spec_helper'

describe MarkersController do

	let(:valid_attributes) { {title:"GA", description:"Campus", address:"633 Santa Monica Blvd. Santa Monica, CA", interest_group_id:"3" } }
	# sets a method valid_attributes that you can use to assign default attributes when creating a new Wizard.

	describe "GET index" do

	    it "has a 200 status code" do
	      get :index, interest_group_id: "3"
	      # runs the controller action for index
	      expect(response.status).to eq(200)
	  end
		
		it "should show all the markers from assiging @markers" do
			GA = Marker.create! valid_attributes
			GeneralAssembly = Marker.create! valid_attributes
			get :index, interest_group_id: "3"
			expect(assigns(:markers)).to eq([GA, GeneralAssembly])
			expect(assigns(:markers).length).to eq(2)

		end

		it "should render out the index template" do
			get :index, interest_group_id: "3"
			expect(response).to render_template :index, interest_group_id: "3"
		end
	end

	describe "GET SHOW" do

				it "has a 200 status code" do
					GA = Marker.create! valid_attributes
				    get :show, id: GA.id, interest_group_id: "3"
				    expect(response.status).to eq(200)
				    expect(assigns(:marker)).to eq(GA)
		  		end

		  		it "should render out the show template" do
		  			GA = Marker.create! valid_attributes
					get :show, id: GA.id, interest_group_id: "3"
					expect(response).to render_template :show, id: GA.id, interest_group_id: "3"
				end
	end

	describe "GET NEW" do

				it "has a 200 status code" do
				    expect(response.status).to eq(200)
		  		end

		  		it "should render out the new template" do
		  			school = InterestGroup.create!(name:"Schools", id:"3", user_id:"1")
		  			get :new, interest_group_id: "3"
					expect(response).to render_template :new, interest_group_id: "3"
				end
	end

end	