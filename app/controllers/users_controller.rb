class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy ]

  def index
    @users = User.all
  end

  def show   
  end

  def new
    @user = User.new
  end

  def edit    
  end

  def login_new
  end

  def create  
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was created successfully"
      redirect_to login_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update    
    if @user.update(user_params)
    flash[:notice] = "User was edited successfully"
    redirect_to users_path
   else
    render :edit, status: :unprocessable_entity
   end
end

def destroy
  @user.destroy
  redirect_to users_path
end
  
def login
  login_params= params.permit(:username, :password)
  @user =User.find_by(username: login_params[:username])
  if @user && @user.password==login_params[:password]
    redirect_to user_path(@user)
  else
    flash[:notice] = "Login Failed"
    render :login_new, status: :unprocessable_entity
  end
end

  private
  
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :phone_number, :address, :dob, :role, :bio)
  end
  
  def set_user
    @user= User.find(params[:id])
  end
end
