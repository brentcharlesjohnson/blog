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

	end
end

