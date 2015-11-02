class MessagesController < ApplicationController

	def index
		@messages = Message.all
	end

	def new
	end

	def create
		@message = Message.new(message_params)

		@message.save
		redirect_to messages_path
	end

	private 
	def message_params
		params.require(:message).permit(:name, :email, :country, :city, :comment)
	end
end
