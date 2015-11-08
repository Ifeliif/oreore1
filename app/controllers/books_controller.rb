class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save    
    redirect_to :books    
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end
  
  def edit_multiple
    @books = Book.find(params[:book_ids])
    @book_category = Book.select(:category).distinct
  end
  
  def update_multiple
    @books = Book.update(params[:books].keys, params[:books].values)
    @books.reject!{ |p| p.errors.empty? }
    if @books.empty?
      redirect_to :books
    else
      redirect_to :books
    end
  end
  
  private
  def book_params
    attrs = [:title,  :price, :category, :selling, :published ]
    params.require(:book).permit(attrs) 
  end
  

 
end
