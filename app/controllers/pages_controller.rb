class PagesController < ApplicationController
  before_action :require_login, only: [:edit, :update]
  before_action :authorized?, only: [:edit, :update, :show]

  def about
  end

  def contact
  end

  def index
  if params[:q]
    @bars = Bar.where("location like ?", '%' + params[:q] + '%')
  elsif params[:r]
    @bars = Bar.where("zip like ?", '%' + params[:r] + '%')
  elsif params[:p]
    @bars = Bar.where("bar_name like ?", '%' + params[:p] + '%')
  elsif params[:s]
    @bars = Bar.where("day like ?", '%' + params[:s] + '%')
  else
    # @bars = Bar.all
    @bars = Bar.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
  end
end

  def new
    @user = User.new
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

    if @user.update_attributes(params.require(:user).permit(:name, :password,  :password_confirmation))
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end #end update def


  def map
    @bars = Bar.all
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
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
