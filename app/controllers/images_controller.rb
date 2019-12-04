class ImagesController < ApplicationController


	def new

	end

	def create
    @category = Category.find_by(name: params[:category])
    @category.images.attach(params[:images])
    redirect_to(category_path(@category.id))

  end 

  # def create2
  #   @catalogue = Catalogue.find_by(name: params[:catalogue])
  #   @catalogue.images.attach(params[:images])
  #   redirect_to(catalogue_path(@catalogue.id))
  # end

  def index
  	@categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.images.purge
  end

    private
    def image_params
      params.permit(:images, :orientation )
    end

end
