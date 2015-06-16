class Article < ActiveRecord::Base	
	belongs_to :theme_title
	validates :title, presence: true, length: { minimum: 1 }
end
