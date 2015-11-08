300.times do |i|
  Buying.create(
        user_id: rand(1..90),
        book_id: rand(1..30) ,
        buy_date: Date.today - rand(1..182),
        number:  rand(1..4)
  )
end