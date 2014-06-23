 require 'spec_helper'

 describe Admin, :type => :model do
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

 end