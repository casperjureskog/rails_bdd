class CommentController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @articles = Article.find(params[:article_id])
    @comments = Comment.new(article: @articles)

  end

  def create
    @nisse = params[:comment][:comment]
    @articles = Article.find(params[:format])
    @comments = Comment.new(article: @articles, comment: @nisse )


    if @comments.save
      redirect_to new_article_comment_path(@articles)
    end
  end
end
