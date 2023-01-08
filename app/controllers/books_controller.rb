class BooksController < ApplicationController
  def new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      #flash[:notice] = "Book was successfully created."
      #redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @book = Book.find(params[:id]) 
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @books = Book.all
  end 
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
  
end
