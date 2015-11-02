class BuyingsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
  end
  def create
    @buy =Buying.new
    @buy.book_id = params[:buying][:book_id]
    @buy.user_id = current_user.id
    @buy.buy_date=Date.today
    @buy.number = params[:buying][:number]
    @buy.save 
    redirect_to :books   
  end
  
end
