require 'rails_helper'

describe User do 
	let!(:user) { User.create(username: "Justin", email: "jwag89@gmail.com", password:"jwag") }

	context "username" do
		it "should return the username" do  
			expect(user.username).to eq("Justin")
		end
	end

	context "email" do
		it "should return the email" do  
			expect(user.email).to eq("jwag89@gmail.com")
		end
	end

	context "password" do 
		it "should return the password" do 
			expect(user.password).to eq("jwag")
		end
	end

	describe "Invalid params" do 
		it "is invalid without a username" do 
			expect { User.new(:user, username: nil) }.to raise_error(ArgumentError)
		end
	end
end