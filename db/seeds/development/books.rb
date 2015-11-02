science = %w(ruby math python chimie)
word = ["L'introduction de ", "Livre de ", "L'essence de "]
price =[ 2400, 2300, 2680, 2780, 600, 800, 400, 300 ]
published = ["2003-09-17", "2002-02-14","2006-08-19","2010-09-27","2009-08-27","2011-05-29","1953-07-27","1998-12-17"]
  0.upto(2) do |i|
      0.upto(3) do |j|
        Book.create(
        title: word[i]+science[j],
        price: price[rand(1..23)%8] ,
        selling: 0 ,
        category: "Science" ,
        published: published[rand(1..15)%8]
        )
      end
    end

politics = %w( politics macroéconomie  mondalisation microéconomie )

    0.upto(2) do |i|
        0.upto(3) do |j|
          Book.create(
          title: word[i]+politics[j],
          price: price[rand(1..23)%8] ,
          selling: 0 ,
          category: "Politics and Economy" ,
          published: published[rand(1..19)%8]
          )
        end
      end

hobbies = %w( cuisine musique  )
 
0.upto(2) do |i|
    0.upto(1) do |j|
      Book.create(
      title: word[i]+hobbies[j],
      price: price[rand(1..23)%8] ,
      selling: 0 ,
      category: "Hobby" ,
      published: published[rand(1..19)%8]
      )
    end
  end
