class LandingController < ApplicationController
  def index
    @articles = Article.all
    @comments = Comment.select(article: @articles)
  end

  def create
  end
end
