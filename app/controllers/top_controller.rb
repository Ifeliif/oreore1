class TopController < ApplicationController
  def index
    if current_user
      @log_count = current_user.count
    end
#    if current_user = nil && current_user.sign_in != nil
#      @log_time = Time.now - current_user.sign_in
#   end
    
  end

  def about
  end
  
  def locale
    if %w(ja en).include?(params[:locale])
      cookies[:locale] = params[:locale]
      redirect_to :root
    end
  end
  
  
end
