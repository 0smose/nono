class ImagesController < ApplicationController


	def new

	end

	def create
    @category = Category.find_by(name: params[:category])
    @category.images.attach(params[:images])
    redirect_to(user_path(current_user.id))
  end 

  def index
  	@categories = Category.all
  end
end
