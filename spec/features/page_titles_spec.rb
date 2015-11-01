require "rails_helper"

describe "visiting pages" do 

	it "displays home title" do 
		visit home_path
		expect(page).to have_title "Home | A Work in Progress"
	end

	it "displays about title" do
		visit about_path
		expect(page).to have_title "About | A Work in Progress"
	end

	it "displays contact title"  do
		visit contact_path
		expect(page).to have_title "Contact | A Work in Progress"
	end 

	it "displays project title" do
		visit project_path
		expect(page).to have_title "Project | A Work in Progress"
	end
end
