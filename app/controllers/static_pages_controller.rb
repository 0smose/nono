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

end
