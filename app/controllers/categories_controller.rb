class CategoriesController < ApplicationController
  before_action :check_if_admin

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new(params[:category])
  end

  def create
    @category = Category.create!(category_params)
    redirect_to @category
  end

  def edit
    @category = Category.find(params[:id])
  end

    def update
    @category = Category.find(params[:id])
    if @category.update(name: params[:name])
      flash[:success] = "Vous avez bien édité la catégorie"
      redirect_to categories_path
    else 
      flash[:alert] = "Un problème est survenu, recommence :p"
      render :edit
   end
  end

  def show
  	 @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path
      flash[:succes] = "Tu as bien supprimé la catégorie"
    else
      flash[:alert] = "Un problème est survenu, recommence :p"
      render :edit
    end
  end

 
  def check_if_admin
    if current_user.id_admin == false
      flash[:error] = "Vous n'êtes pas un administrateur !"
      redirect_to root_path
    end
  end

  def delete_image_attachment
    @category = Category.find(params[:category_id])
    @category.images.find(params[:format]).purge
    redirect_to category_path(@category.id)
    # @image = ActiveStorage::Blob.find(params[:id])
    # @image.attachments.first.purge
    # redirect_to category_path(id)
  end

  
  private
    def category_params
      params.permit(:name, :images )
    end

end
