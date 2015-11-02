class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def project
  end

  def contact
		redirect_to messages_path
  end

end
