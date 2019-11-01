class ImagesController < ApplicationController

	def create
    @category = Category.find_by(name: params[:category])
    @category.images.attach(params[:images])
    redirect_to(category_path(@category))
  end 
end
