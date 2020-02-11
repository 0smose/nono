class Admins::CataloguesController < ApplicationController

	def index
		@catalogues = Catalogue.all
	end

	def new
		@catalogue = Catalogue.new(params[:catalogue])
	end

	def create
		@catalogue = Catalogue.create!(catalogue_params)
		redirect_to admins_catalogue_path(@catalogue.id)
		flash[:succes] = "Tu as bien crée le catalogue"
	end
  def edit
    @catalogue = Catalogue.find(params[:id])
  end

    def update
    @catalogue = Catalogue.find(params[:id])
    if @catalogue.update(name: params[:name], description: params[:description])
      flash[:success] = "Vous avez bien édité le catalogue"
      redirect_to admins_catalogues_path
    else 
      flash[:alert] = "Un problème est survenu, recommence :p"
      render :edit
   end
  end

	def show
		@catalogue = Catalogue.find(params[:id])	
	end

	def destroy
    @catalogue = Catalogue.find(params[:id])
    if @catalogue.destroy
      redirect_to admins_catalogues_path
      flash[:success] = "Tu as bien supprimé le catalogue"
    else
      flash[:alert] = "Un problème est survenu, recommence :p"
      render :edit
    end
  end

	def delete_picture_attachment
		@catalogue = Catalogue.find(params[:catalogue_id])
		@catalogue.pictures.find(params[:format]).purge
		redirect_to admins_catalogue_path(@catalogue.id)
	end

	  private
    def catalogue_params
      params.permit(:name, :description, pictures: [] )
    end

end
