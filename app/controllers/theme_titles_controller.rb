class ThemeTitlesController < ApplicationController
	def index
		@theme_titles = ThemeTitle.all
	end

	def show
		@theme_title = ThemeTitle.find(params[:id])
	end

	def new
		@theme_title = ThemeTitle.new
	end

	def edit
	end 

	def create
		@theme_title =  ThemeTitle.new(theme_title_params)

		if @theme_title.save
		redirect_to @theme_title
		else
			render 'new'
		end
	end

	def update
	end

	private
	def theme_title_params
		params.require(:theme_title).permit(:title, :details)
	end
end
