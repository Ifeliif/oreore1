users = %w{ 1 2 3 4}
contents = [
  "Je suis vraiment fatigué.... Mais je bois du café. " ,
  "J'ai envie de rester tout seul. " ,
  "Alors on y va ?" ,
  "Je suis pas connard.", 
  "Je vais sortir avec une fille." ,
  "Et en plus, je suis ingénieur." ,
  "Je vais sortir avec une fille." ,
  "Holala" ,
  "Je t'aime ma puce!"  
]
  0.upto(9) do |idx|
    Tweet.create(
      user_id:  users[idx % 4],
      content: contents[idx]
    )

  end
    
    
    