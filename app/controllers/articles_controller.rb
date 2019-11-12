class ArticlesController < ApplicationController
before_action :authenticate_user!

	def index
		@articles = Article.all
	end 

	def new 
		@article = Article.new
	end

	def create
		    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
		@article = Article.new(user_id: [current_user.id], title: params[:title], body: params[:body], 
		category: params[:category])
		if @article.save
			redirect_to articles_path
			flash[:success] = "Votre article a bien été crée."
		else
			render :new
		end
	end

	def show	
		@article = Article.find(params[:id])
	end 

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
	
			if @article.update(title: params[:title], body: params[:body], category: params[:category])
			redirect_to static_pages_courses_path
				flash[:success] = "Votre article a bien été modifié"
			else
				flash[:alert] = "Vous n'avez pas rempli tous les champs, veuillez réessayez svp"
				render :edit
			end		
		end

	def destroy
		@article = Article.find(params[:id])
		if @article.destroy
			redirect_to static_pages_courses_path
			flash[:success] = "Votre article a bien été supprimé"
		else 
			flash[:alert] = "Un problème est survenu"
			render :edit
		end
	end

end
