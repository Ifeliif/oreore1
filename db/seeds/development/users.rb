names = %w{ Taro Hanako Jiro Saburo }

  0.upto(3) do |idx|
    User.create(
      name: names[idx],
      password: "password"
    )

  end
    
    
    