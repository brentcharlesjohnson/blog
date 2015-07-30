class ImagesController < ApplicationController
	def show
		@image = Image.find(params[:id])
	end
	
	def create
		@theme_title = ThemeTitle.find(params[:theme_title_id])
		@image = @theme_title.images.create(image_params)
		redirect_to theme_title_path(@theme_title)
	end

	private
	def image_params
		params.require(:image).permit(:content)
	end
end
