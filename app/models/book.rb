class Book < ActiveRecord::Base
  has_many :buyings, dependent: :destroy  
end
