contents = [
  "Je suis vraiment fatigué.... Mais je bois du café. " ,
  "J'ai envie de rester tout seul. " ,
  "Alors on y va ?" ,
  "Je suis pas connard.", 
  "Je vais sortir avec une fille." ,
  "Et en plus, je suis ingénieur." ,
  "Je vais sortir avec une fille." ,
  "Holala" ,
  "Je t'aime ma puce!" ,
  "日本語を勉強しています。",
  "I don't understand French or Japanese.",
  "夏目漱石が好き。",
  "うちの会社はかっこいい。",
  "I made a serious mistake.",
  "Je ne sais pas ce qu'on va faire.",
  "Hello Everybody!",
  "Nice to meet you.",
  "May I ask your name?",
  "I'm alright.",
  "I'm diying.",
  "I'm great, I got the present from my Mum!",
  "I'm terrible, I drunk too much yesterday.",
  "何が違うんですか？",
  "どうでしたか？",
  "I don’t care.",
  "寝てたい。",
  "面倒なことが好きではない。",
  "時間を大切にしたい。",
  "みんなのことが好き！",
  "ありのままに",
  "Moi, moi, moi!",
  "Ils sont fous!"  
]
  0.upto(100) do |idx|
    Tweet.create(
      user_id: rand(1..90),
      content: contents[idx%30]
    )
  end
    
    
    