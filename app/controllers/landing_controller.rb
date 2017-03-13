class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(articles_params)
    post.save
  end

private
  def articles_params
    params.require(:articles).permit(:title, :content)
  end

end
