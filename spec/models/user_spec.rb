require 'rails_helper'

RSpec.describe User do
	
	describe "initialization" do
		let(:user) { User.new(name: "Leroy Brown", email: "leroy@badtown.com") }

		it "should be valid" do
		 expect(user).to be_valid	
		end
	end
end

