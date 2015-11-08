class SessionsController < ApplicationController
  # -*- encoding: utf-8 -*-
  def create
    user = User.authenticate(params[:name], params[:password])
    if user
      session[:user_id] = user.id
    else
     # flash.alert = "名前とパスワードが一致しません"
    end
    redirect_to :root
  end
    
  def destroy
    user = User.find_by(id: session[:user_id] )
    user.sign_out = Time.current
    user.save
    session.delete(:user_id)
    redirect_to :root
  end
  
end
