class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @bar = Bar.new
  end


  def create
      @user = User.new(user_params)

      if @user.save
        session[:user_id] = @user.id.to_s
        flash[:welcome] = "Thanks for signing up, #{@user.name}!"
        redirect_to user_path(current_user)
      else
        render :new
      end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params.require(:user).permit(:name, :password, :password_confirmation))
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end #end update def


  private
  def user_params
    params.require(:user).permit(:name, :email, :password,  :password_confirmation)
  end

end
