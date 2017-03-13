class CommentController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @articles = Article.find(params[:article_id])
    @comments = Comment.new(article: @articles)

  end

  def create
    @articles = Article.find(params[:format])
    @comments = Comment.new(article: @articles, comment: params[:comment][:comment] )

    if @comments.save
      redirect_to new_article_comment_path(@articles)
    end
  end
end
