class UsersController < ApplicationController
  
  def index
    @users = User.all
    
    respond_to do |format|
      format.html
      format.xml { render xml: @users.to_xml }
      format.json { render json: @users.to_json }
    end 
  end
  
  def show
    @users = User.find(params[:id])
  end 
  
  def new
    @user = User.new
  end 
  
  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :age)
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user_params = params.require(:user).permit(:first_name, :last_name, :age)
    @user = User.find(params[:id])
    if  @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end