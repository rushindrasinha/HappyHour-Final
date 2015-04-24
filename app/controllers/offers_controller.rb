class OffersController < ApplicationController
  before_action :require_login, only: [:new, :create, :update, :destroy, :edit, :index]
  before_action :authorized?, only: [:edit, :update, :show, :destroy]
  before_action :authorize_new_offer?, only: [:new]




  def index
    @offers = Offer.all
  end

  def new
    @bar = Bar.find(params[:id])
    @offer = @bar.offers.new
  end


  def create
    @bar = Bar.find(params[:id])
    @offer = @bar.offers.new(params.require(:offer).permit(:item, :description, :price, :image))
    #@offer.bar =
    if @offer.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @bar = Bar.find(params[:id])
    @offers = @bar.offers.all
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])

    if @offer.update_attributes(params.require(:offer).permit(:item, :description, :price, :image))
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end #end update def

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to user_path(current_user)
  end


  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access that page!"
      redirect_to login_path
    end
  end

  def authorized?
    unless current_user == Offer.find(params[:id]).bar.user
      flash[:error] = "You are not authorized to access that page"
      redirect_to root_path
    end
  end

  def authorize_new_offer?
    unless current_user == Bar.find(params[:id]).user
      flash[:error] = "You are not authorized to access that page"
      redirect_to root_path
    end
  end


end
