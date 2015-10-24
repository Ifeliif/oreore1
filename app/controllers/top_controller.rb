class TopController < ApplicationController

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
  
  
end
