class Admins::TextsController < ApplicationController

	def index
		@texts = Text.all
	end

	def new 
		@text = Text.new
	end

	def create 
		@text = Text.new(name: params[:name], description: params[:description])
		if @text.save
			flash[:success] = "Votre texte a bien été crée."
			redirect_to admins_texts_path
		else
			render :new
		end
	end

	def show
		@text = Text.find(params[:id])
	end

	def edit
		@text = Text.find(params[:id])
	end

	def update
		@text = Text.find(params[:id])
		if @text.update(name: params[:name], description: params[:description])
			flash[:success] = "Vous avez bien édité le texte"
			redirect_to admins_root_path
		else 
			flash[:alert] = "Un problème est survenu, recommence :p"
			render :edit
		end
	end

	def destroy
		@text = Text.find(params[:id])
	    if @text.destroy
	      redirect_to admins_texts_path
	      flash[:success] = "Tu as bien supprimé le texte"
	    else
	      flash[:alert] = "Un problème est survenu, recommence :p"
	      render :edit
	    end
	end

end
