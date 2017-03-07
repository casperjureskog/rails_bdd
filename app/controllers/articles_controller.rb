class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def new
    @articles = Article.new
  end
  def create
    @articles = Article.new article_params
    @articles.save

    redirect_to landing_index_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end