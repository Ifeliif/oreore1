class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page]).per(7)
  end
  
  def new 
    @user = User.new(birthday: Date.new(1980,1,1))
    @user.build_image unless @user.image
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end
  
  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    @user.save
    redirect_to :root
  end
  
  def show
    @user = User.find(params[:id])
    if params[:format].in?(["jpg","png","gif"])
      send_image
    else
      render "show"
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @user.build_image unless @user.image
  end
  
  def mypage
    @user = User.find(current_user.id)
    @user.build_image unless @user.image
    render "show"
  end
  
  def search
    @users = User.where("lower(name) LIKE ? or upper(name) LIKE ? " ,"%#{ params[:q] }%", "%#{ params[:q] }%").page(1).per(100)
    @search_flag = 1
     render "index"
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end  
  
  private
  def send_image
    if @user.image.present?
      send_data @user.image.data, type: @user.image.content_type, disposition: "inline"
    else
      ""
    end
  end

  def user_params
    attrs = [:name, :birthday, :email, :introduction, :password]
    attrs << { image_attributes: [:_destroy, :id, :uploaded_image ] }
    params.require(:user).permit(attrs) 
  end
  
end
