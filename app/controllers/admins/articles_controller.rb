class Admins::ArticlesController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin


	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(user_id: current_user.id, title: params[:title], body: params[:body], category: params[:category])
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
	end 

	def update
		@article = Article.find(params[:id])
		if @article.update(title: params[:title], body: params[:body], category: params[:category])
			flash[:success] = "Vous avez bien éditer l'article"
			redirect_to admins_articles_path
		else 
			flash[:alert] = "probleme nono"
			redirect_to admins_articles_path
		end
	end


	def destroy
	@article = Article.find(params[:id])
		if @article.destroy
			flash[:success] = "Vous avez bien supprimé l'article"
			redirect_to admins_articles_path
		else
			flash[:alert] = "Il y a eu un problème"
			redirect_to admins_articles_path
		end
	end

	def check_if_admin
		if current_user.id_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end

end
