class CommentsController < ApplicationController
  def show
    
  end

  def new
    @tweet_id = params[:tweet_id]
    p @tweet_id
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.content = params[:comment][:content]
    @comment.save
    redirect_to :tweets         
  end

  def edit
    @comment = Comment.find(params[:id])    
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :tweets
  end

  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.tweet_id = params[:comment][:tweet_id]
    @comment.user = current_user
    @comment.save
    redirect_to :tweets    
  end
end
