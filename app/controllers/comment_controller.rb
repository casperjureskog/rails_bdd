class CommentController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @articles = Article.find(params[:article_id])
    @comments = Comment.new(article: @articles)
  end

  def create
    binding.pry
    @articles = Article.find(params[:article_id])
    @comments = Comment.new(article: @articles, names: params[:comment][:email][:commit])

    if @comments.save
      redirect_to new_article_comment_path(@articles)
    end
  end
end
