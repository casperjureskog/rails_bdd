class ArticlesController < ApplicationController
  def show
    author = params[:id]
    @article = Article.find_by_author(author)
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
    params.require(:article).permit(:title, :content, :author)
  end
end
