class ArticlesController < ApplicationController
include ArticlesHelper
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
	@comment = Comment.new
    @comment.article_id = @article.id

  end
  
  def new
    @article = Article.new
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    flash.notice = "Article '#{@article.title}' saved!"
	
	redirect_to article_path(@article)
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    flash.notice = "Article '#{@article.title}' updated!"
  
    redirect_to article_path(@article)
  end
  
  def destroy
    @article = Article.find(params[:id])
	@article.destroy
    flash.notice = "Article '#{@article.title}' deleted!"
	
	redirect_to "http://localhost:3000/articles"
  end
  
end
