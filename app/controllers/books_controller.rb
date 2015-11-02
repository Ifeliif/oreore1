class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def new
    
  end

  def create

  end
  
  def edit_multiple
    @books = Book.find(params[:book_ids])
    @book_category = Book.select(:category).distinct
  end
  

 
end
