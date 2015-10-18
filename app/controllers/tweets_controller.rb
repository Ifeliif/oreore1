class TweetsController < ApplicationController
  before_action :set_attr
  def index
    @tweets = Tweet.all
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
  
  private
  def set_attr
    if current_user
       @log_count = current_user.count
    end
  end
  
end
