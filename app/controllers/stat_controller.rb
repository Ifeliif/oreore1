class StatController < ApplicationController
  def index
    @quantity = Buying.order('buy_date').group(:buy_date).sum(:number)
  end
end
