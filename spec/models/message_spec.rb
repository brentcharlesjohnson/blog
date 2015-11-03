require 'rails_helper'

RSpec.describe Message do
	
	describe "initialization" do 
		let(:message) { Message.new(name: "Erin", email: "erin@example.com",
																country: "Russia", city: "Ufa", \
																comment: "Hello World!") }

		let(:message_blank) { Message.new(name: "Daniel", email: "",
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

		it "should accept a valid email address" do
			valid_addresses = %w[bob@greatwhitenorth.com SUSHI@restaurant.com
			K_E_N@barbies.pad.org bill+ted@adventure.com] 
			valid_addresses.each do |v| 
				message.email = v
				expect(message).to be_valid, "#{v.inspect} should be valid" 			
			end 
		end

		it "should reject invalid addresses" do 
			invalid_addressess = %w[bob@greatwhitenorth,com SUSHI_restaurant.com
			ken.boy@barbiespad. bill@ted+adventure.com]
			invalid_addressess.each do |i|
				message.email = i
				expect(message).not_to be_valid "#{i.inspect} should not be valid"
			end
		end

		it "should allow duplicate email if blank" do
			duplicate_message_blank = message_blank.dup
			message_blank.save
			expect(duplicate_message_blank).to be_valid
		end

		it "should have a unique email address" do 
			duplicate_message = message.dup
			duplicate_message.email = message.email.upcase
			message.save
			expect(duplicate_message).not_to be_valid
		end

      it "should update the mailing list if email is present" do :pending
		end

	end
end

