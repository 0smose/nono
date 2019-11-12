class CategoriesController < ApplicationController

  def new
    @category = Category.new(params[:category])
  end

  def create
    @category = Category.create!(category_params)
    redirect_to @category
  end

  def show
  	 @category = Category.find(params[:id])
  end
 
  private
    def category_params
      params.permit(:name, :images )
    end

end
