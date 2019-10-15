class StaticPagesController < ApplicationController

	def home
	end

	def courses
	end

	def expo
		@user = User.first
	end

end
