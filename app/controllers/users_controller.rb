class UsersController < ApplicationController
  before_action :set_attr
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
  
  private
  def set_attr
    if current_user
       @log_count = current_user.count
    end
  end
  
end
