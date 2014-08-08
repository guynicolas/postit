 class UsersController < ApplicationController 

  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      flash[:notice] = "You are registered."
      redirect_to root_path
    else 
      render :new 
    end 
  end

  def edit
    
  end

  def update
    
  end

  def user_params
    params.require(:user).permit(:usernane, :password)
  end
end 

