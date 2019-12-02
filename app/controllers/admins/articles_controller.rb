class Admins::ArticlesController < ApplicationController


	def index
		@category = Category.all
		@articles = Article.all
	end

end