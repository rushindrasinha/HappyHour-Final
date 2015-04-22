class PagesController < ApplicationController

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
    @bars = Bar.all
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


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
