class ImagesArticleController < ApplicationController

	def new

	end

	def create
    @article = Article.find(params[:article_id])
    if params[:images_article] == nil
      redirect_to edit_admins_article_path(@article.id)
      flash[:alert] = "Veuillez choisir un fichier"
    else
    @article.images_article.attach(params[:images_article])
    redirect_to(admins_articles_path)
  end 
	end


end
