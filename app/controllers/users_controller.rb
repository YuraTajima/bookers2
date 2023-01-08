class UsersController < ApplicationController
  
  def show
    @book = Book.new
    @books = Book.all
  end

  def edit
  end
end
