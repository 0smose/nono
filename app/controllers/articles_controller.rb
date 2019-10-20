class ArticlesController < ApplicationController


	def index
		@articles = Article.all
	end 

	def create
		@user = User.find(params[:id])
		@article = @user.articles.create(article_params)
		redirect_to user_path(@user)
	end

	def show
			
		@article = Article.find(params[:id])
	end 
end
