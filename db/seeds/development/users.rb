names = %w{ Taro Hanako Jiro Saburo }
intros = ["Je m'appele Taro, je suis étudiant .",
"Je m'appelle Jiro, je suis informaticien",
"Je m'appelle Hanako. Je suis professeur",
"Je m'appelle Saburo. Je suis médicien."]
  0.upto(3) do |idx|
    User.create(
      name: names[idx],
      password: "password",
      introduction: intros[idx]
    )

  end
    
    
    