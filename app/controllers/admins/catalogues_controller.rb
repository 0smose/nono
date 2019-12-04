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
	end

	def edit
	end

	def update
	end

	def show
		@catalogue = Catalogue.find(params[:id])	
	end

	def destroy
    @catalogue = Catalogue.find(params[:id])
    if @catalogue.destroy
      redirect_to admins_catalogues_path
      flash[:succes] = "Tu as bien supprimé le catalogue"
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
