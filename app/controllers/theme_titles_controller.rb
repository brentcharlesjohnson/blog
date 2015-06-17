class ThemeTitlesController < ApplicationController
	def new
	end

	def create
		render plain: params[:theme_title].inspect
	end
end
