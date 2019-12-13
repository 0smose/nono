class ImagesController < ApplicationController


	def new

	end

	def create
    @category = Category.find_by(name: params[:category])
     if params[:images] == nil
      redirect_to category_path(@category.id)
      flash[:alert] = "Veuillez choisir un fichier"
    else
    @category.images.attach(params[:images])
    redirect_to(category_path(@category.id))
    end
  end 



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
