class ThemeTitle < ActiveRecord::Base
	has_many :articles 
	has_many :images
end
