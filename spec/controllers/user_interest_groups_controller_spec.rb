require 'spec_helper'

describe UserInterestGroupsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

<<<<<<< HEAD
  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
=======
  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
>>>>>>> bc60d47c69d90e2100be455aef4c8aed2f3d9509
      response.should be_success
    end
  end

<<<<<<< HEAD
  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
=======
  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
>>>>>>> bc60d47c69d90e2100be455aef4c8aed2f3d9509
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
