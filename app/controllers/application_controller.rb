class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # -*- encoding: utf-8 -*-
  protect_from_forgery with: :exception
  
  before_action :set_locale
  before_action :set_attr
  
  private
  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user    

  def set_locale
    if %w(ja en).include?(cookies[:locale])
      I18n.locale = cookies[:locale]
    end
  end
  
  def set_attr
    if current_user
       @log_count =  current_user.count
    end
    if current_cart
      @cart = current_cart
    end
  end
  
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
