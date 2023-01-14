class UsersController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
  end
  
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    flash[:notice] = "Welcome! You have signed up successfully."
  end

  def edit
   
    @user = User.find(params[:id])

  end


  def update
    
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end


  private
  
  

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end