class CommentController < ApplicationController
  def new
    @articles = Article.find(params[:article_id])
    @comment = Comment.new(article: @articles)
  end
end
