class User < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy  
  has_many :buyings, dependent: :destroy

  has_many :friendships_of_from_user, :class_name => 'Friendship', :foreign_key => 'from_user_id', :dependent => :destroy
  has_many :friendships_of_to_user, :class_name => 'Friendship', :foreign_key => 'to_user_id', :dependent => :destroy
  has_many :friends_of_from_user, ->{ where( friendships: { friend_flag: 1} ) },:through => :friendships_of_from_user, :source => :to_user 
  has_many :friends_of_to_user, ->{ where(friendships: { friend_flag: 1 } ) },:through => :friendships_of_to_user, :source => :from_user
  
  has_many :friends_requesting, -> { where(friendships: { friend_flag: 0}) }, :through => :friendships_of_from_user, :source => :to_user
  has_many :friends_requested, -> { where(friendships: { friend_flag: 0}) }, :through => :friendships_of_to_user, :source => :from_user
  

  def friends
       friends_of_from_user + friends_of_to_user
  end

  
  def password=(val)
    if val.present?
      self.hashed_password = BCrypt::Password.create(val)
    end
    @password = val
  end
  class << self
  def authenticate(name, password)
    user = find_by(name: name)
    if user && user.hashed_password.present? && BCrypt::Password.new(user.hashed_password) == password
      user.count += 1
      user.sign_in = Time.current
      user.save
      user
    else
      nil
    end
  end
end
end
