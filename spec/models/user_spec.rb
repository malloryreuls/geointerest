 require 'spec_helper'

 describe User, :type => :model do

 	it 'is invalid without a email' do
 	noemail = User.new(email: "")
 	expect(noemail).to be_invalid
 	end

 	it 'is invalid without a password' do
 	nopw = User.new(email: "mal@mal.com", password: "" )
 	expect(nopw).to be_invalid
 	end

 	it 'is invalid without a password confirmation' do
 	nopwc = User.new(email: "mal@mal.com", password: "galovesme", password_confirmation: "" )
 	expect(nopwc).to be_invalid
 	end

 	it 'is invalid without a username' do
 	noun = User.new(email: "mal@mal.com", username: "")
 	expect(noun).to be_invalid
 	end

 end