Friendship.create(
from_user_id: "1",
to_user_id: "3",
friend_flag: 1
)    
Friendship.create(
from_user_id: "1",
to_user_id: "4",
friend_flag: 1
)    
200.times do |i|
  Friendship.create(
  from_user_id: rand(1..90),
  to_user_id: rand(1..90),
  friend_flag: i%2
  )    
end