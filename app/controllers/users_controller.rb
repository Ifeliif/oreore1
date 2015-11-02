class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
  end
  
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.password = params[:user][:password]
    @user.introduction = params[:user][:introduction]
    @user.save
    redirect_to :root
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def search
    @users = User.where("lower(name) LIKE ? or upper(name) LIKE ? " ,"%#{ params[:q] }%", "%#{ params[:q] }%")
     render "index"
  end
end
