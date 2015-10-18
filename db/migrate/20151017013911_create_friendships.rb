class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.string :from_user_id
      t.string :to_user_id
      
      t.timestamps
    end
  end
end
