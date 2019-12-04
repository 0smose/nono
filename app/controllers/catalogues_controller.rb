class CataloguesController < ApplicationController

		def index
			@catalogues = Catalogue.all
		end

	  def delete_image_attachment
    @catalogue = Catalogue.find(params[:catalogue_id])
    @catalogue.pictures.find(params[:format]).purge
    redirect_to admins_catalogue_path(@catalogue.id)
  end

  def show 
  	@catalogue = Catalogue.find(params[:id])
  end

end
