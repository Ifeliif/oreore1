class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(7)
  end

  def show
   @tweet = Tweet.find(params[:id])
  end
  
  def index_friends
    @tweets = Tweet.find_by_sql(['select * from tweets inner join friendships 
      on tweets.user_id = friendships.from_user_id where friendships.to_user_id = ?
      union
      select * from tweets inner join friendships 
      on tweets.user_id = friendships.to_user_id where friendships.from_user_id = ?
      ',current_user,current_user])
      @tweets = Kaminari.paginate_array(@tweets).page(params[:page]).per(7)
      render 'index'
  end
  
  def index_self
    @tweets = Tweet.find_by_sql(['select * from tweets where user_id = ?
      ',current_user])
      @tweets = Kaminari.paginate_array(@tweets).page(params[:page]).per(7)
      render 'index'
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
