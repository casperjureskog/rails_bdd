class LandingController < ApplicationController
  def index
    @articles = Article.all
    @comments = Comment.select(article: @articles)
  end
end
