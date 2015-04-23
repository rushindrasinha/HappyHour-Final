class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :index]
  before_action :authorized?, only: [:edit, :update, :show]


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

    if @user.update_attributes(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end #end update def


  private
  def user_params
    params.require(:user).permit(:name, :email, :password,  :password_confirmation)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access that page!"
      redirect_to login_path
    end
  end

  def authorized?
    unless current_user == User.find(params[:id])
      flash[:error] = "You are not authorized to access that page"
      redirect_to root_path
    end
  end


end
