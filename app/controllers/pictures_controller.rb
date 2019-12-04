class PicturesController < ApplicationController

	def new

	end

	def create
    @catalogue = Catalogue.find_by(name: params[:catalogue])
    @catalogue.pictures.attach(params[:pictures])
    redirect_to(admins_catalogue_path(@catalogue.id))
  end 

end
