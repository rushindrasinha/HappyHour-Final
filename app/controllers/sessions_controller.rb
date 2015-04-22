class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:login][:email])

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to root_path
    else
      flash.now[:error] = "The email and / or password you entered are incorrect, Please check them and try again"
      render :new
    end
  end #def create end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
