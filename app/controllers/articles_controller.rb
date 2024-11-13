class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
