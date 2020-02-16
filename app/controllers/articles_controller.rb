class ArticlesController < ApplicationController

	def index
		@cours = Article.where(category: "Atelier/cours")
		@text = Text.find_by(name: "cours")
	end 

	def new 
		@article = Article.new
	@category = Category.new

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

	def delete_image_attachment
		@article = Article.find(params[:article_id])
		@article.images_article.find(params[:format]).purge
		redirect_to edit_admins_article_path(@article.id)
	end

end
