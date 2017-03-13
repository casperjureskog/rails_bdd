class CommentController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @articles = Article.find(params[:article_id])
    @comments = Comment.new(article: @articles)

  end

  def create

      @email = params[:comment][:email]

      email_test  = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      @email1 = (@email =~email_test)

   if @email1 == nil
      flash[:notice] = "Email is funky!!!!!"
      redirect_to new_article_comment_path(params[:format])
   else
      @articles = Article.find(params[:format])
      @comments = Comment.new(article: @articles, comment: params[:comment][:comment], email: params[:comment][:email] )

   if @comments.save
      redirect_to new_article_comment_path(@articles)
    end
  end
  end
end
