class User

	attr_accessor :name, :email

	def initialize(options = {})
	 @name = options[:name]
	 @email = options[:email]
	end
end
