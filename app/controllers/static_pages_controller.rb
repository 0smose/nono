class StaticPagesController < ApplicationController

	def home
	end

	def courses
		@article = Article.where(category: "cours")
	end

	def expo
		@user = User.first
		@category = Category.all
	end

	def landing 
		@disable_nav = true
	end

	def about_me
		@articles = Article.where(category: "Article")
		@text = Text.find_by(name: "presentation")
	end

	def test
		@category = Category.all
	end

end
