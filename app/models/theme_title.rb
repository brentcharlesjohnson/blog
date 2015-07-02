class ThemeTitle < ActiveRecord::Base
	validates :title, presence: true,
		length: { minimum: 5 }
	validates :details, presence: true, 
		length: { minimum: 5 }
	has_many :articles 
	has_many :images
end
