users = %w{ 1 2 3 4}
tweets = %w{ 2 1 4 3 5 }
contents = [
  "Salut, ça va ?" ,
  "Je suis chez moi." ,
  "On n'a pas de temps" ,
  "On fait quoi ?", 
  "C'est n'importe quoi!" ,
  "Et en plus, je suis ingénieur." ,
  "J'y vais." ,
  "Holala" ,
  "Je t'aime ma puce!"  
]
  0.upto(8) do |idx|
    Comment.create(
      user_id:  users[idx % 4],
      tweet_id: tweets[idx % 5],
      content: contents[idx]
    )

  end
    
    
    