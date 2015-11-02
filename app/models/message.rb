class Message
	attr_accessor :name, :email, :location, :message

	def initialize(options = {})
		@name = options[:name]
		@email = options[:email]
		@location = options[:location]
		@message = options[:message]
	end
		
	end 
end
