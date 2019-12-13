class PicturesController < ApplicationController

	def new

	end

	def create
    @catalogue = Catalogue.find_by(name: params[:catalogue])
    if params[:pictures] == nil
      redirect_to admins_catalogue_path(@catalogue.id)
      flash[:alert] = "Veuillez choisir un fichier"
    else
    @catalogue.pictures.attach(params[:pictures])
    redirect_to(admins_catalogue_path(@catalogue.id))
  end 
	end

end
