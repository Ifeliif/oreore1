class TweetsController < ApplicationController
  def index
    if current_user
    @tweets = Tweet.order(created_at: :desc).all.limit(5)
   else
    @tweets = Tweet.order(created_at: :desc).all
   end
  end

  def show
   @tweet = Tweet.find(params[:id])
  end

  def new
  end
  
  def update
   @tweet = Tweet.find(params[:id])
   @tweet.content = params[:tweet][:content]
   @tweet.save
   redirect_to @tweet     
  end

  def create
    @tweet = Tweet.new
    @tweet.content = params[:tweet][:content]
    @tweet.user = current_user
    @tweet.save
    redirect_to @tweet
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to :tweets
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  
end
