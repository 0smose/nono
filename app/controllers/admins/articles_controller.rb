class Admins::ArticlesController < ApplicationController
	before_action :authenticate_user!

	def index
		@articles = Article.where(category: "Article")
		@cours = Article.where(category: "Atelier/cours")
	end 

	def new 
		@article = Article.new
	end

	def create

		@article = Article.new(user_id: current_user.id, title: params[:title], body: params[:body], category: params[:category],
			public: params[:public], number: params[:number], equipment: params[:equipment], duration: params[:duration],
			price: params[:price])
		if @article.save

			flash[:success] = "Votre article a bien été crée."
			redirect_to admins_articles_path
		else
			render :new
		end

	end


	def show	
		@article = Article.find(params[:id])
	end 

	def edit
		@article = Article.find(params[:id])
		@articles = Article.all
	end

	def update
		@article = Article.find(params[:id])
	
			if @article.update(title: params[:title], body: params[:body], category: params[:category],
			public: params[:public], number: params[:number], equipment: params[:equipment], duration: params[:duration],
			price: params[:price])
			redirect_to admins_articles_path
				flash[:success] = "Votre article a bien été modifié"
			else
				flash[:alert] = "Vous n'avez pas rempli tous les champs, veuillez réessayez svp"
				render :edit
			end		
		end

	def destroy
		@article = Article.find(params[:id])
		if @article.destroy
			redirect_to admins_articles_path
			flash[:success] = "Votre article a bien été supprimé"
		else 
			flash[:alert] = "Un problème est survenu"
			render :edit
		end
	end

end