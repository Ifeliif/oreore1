class Buying < ActiveRecord::Base
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :book, class_name: "Book", foreign_key: "book_id"  
end
