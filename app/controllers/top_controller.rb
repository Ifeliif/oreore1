class TopController < ApplicationController
  before_action :set_attr
  def index
    
  end

  def about
  end
  
  def locale
    if %w(ja en).include?(params[:locale])
      cookies[:locale] = params[:locale]
      redirect_to :root
    end
  end
  
  private
  def set_attr
    if current_user
       @log_count = current_user.count
    end
  end
  
end
