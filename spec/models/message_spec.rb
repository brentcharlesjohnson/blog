require 'rails_helper'

RSpec.describe Message do
	
	describe "initialization" do 
		let(:message) { Message.new(name: "Erin", email: "erin@example.com",
																country: "Russia", city: "Ufa", \
																comment: "Hello World!") }

		it "is valid" do 
			expect(message).to be_valid
		end

		it "should have a name" do
			message.name = "     "
			expect(message).not_to be_valid
		end

		it "shouldn't have a name that is too long" do 
			message.name = "x" * 51
			expect(message).not_to be_valid
		end

		it "should have an email less than 255 characters, if present" do
			message.email = "x" * 256
			expect(message).not_to be_valid
		end

		it "should update the mailing list if email is present" do :pending
		end

	end
end

