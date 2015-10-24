class Modify3 < ActiveRecord::Migration
  def change
     add_column :friendships, :friend_flag, :integer, null: false, default: 0
  end
end
