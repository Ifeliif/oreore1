class FriendshipController < ApplicationController
  def new
    @friendship = Friendship.new
    @friendship.from_user_id = current_user.id
    @friendship.to_user_id = params[:user_id]
    @friendship.save
    redirect_to :users
  end
  
  def accept
    friendship = Friendship.where(to_user_id: current_user.id, from_user_id: params[:id]).first
    friendship.update_attributes(friend_flag: 1)
    redirect_to :users
  end

  def reject
    friendship = Friendship.where(to_id: current_user.id, from_id: params[:id]).first
    friendship.destroy
  end
  
end
