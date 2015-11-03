class Message < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, length: { maximum: 255 }
end
