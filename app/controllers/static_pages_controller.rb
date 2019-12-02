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


end
