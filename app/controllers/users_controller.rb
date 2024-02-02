class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @books = @user.books
  @book = Book.new
  end

  def edit
  end

  def index
    
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image,:email)
  end
end
