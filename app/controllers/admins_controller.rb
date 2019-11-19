class AdminsController < ApplicationController
		before_action :authenticate_user!
		before_action :check_if_admin

		def check_if_admin
			if current_user.id_admin == false
				flash[:error] = "Vous n'êtes pas un administrateur !"
				redirect_to root_path
			end
	end

	def index
		@articles = Article.all
		@total_articles = @articles.count
		@categories = Category.all
		@total_categories = @categories.count
	end
	
end
