require 'rails_helper'

RSpec.describe Message do
	describe "initialization" do 
		let(:message) { Message.new(name: "Erin", email: "erin@example.com", \
																location: "Ural Mountains", comment: "Hello
																World!") }
		
		it "is valid" do 
			expect(message).to be_valid
		end

	end
end

