class User < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy  
  
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
