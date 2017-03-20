class CommentController < ApplicationController
  def new
      @articles = Article.find(params[:article_id])
      @comments = Comment.new(article: @articles)
  end

  def create
      @email = (params[:comment][:email] =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)

   if @email == nil
      flash[:alert] = "Email is funky!!!!!"
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
