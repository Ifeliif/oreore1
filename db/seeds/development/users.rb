names = %w{ Taro Hanako Jiro Saburo Sophie Marie John Kazuko Yun}
intros = ["Je m'appele Taro, je suis étudiant .",
"Je m'appelle Hanako, je suis informaticien.",
"Je m'appelle Jiro. Je suis professeur.",
"Je m'appelle Saburo. Je suis médicien.",
"Je m'appelle Sophie. Je suis Italienne.",
"Je m'appelle Marie. Je suis française.",
"Je m'appelle John. Je suis pilote.",
"Je m'appelle Kazuko. Je suis une fille de 18 ans.",
"Je m'appelle Yun. Je suis jeune."
]

birthday =["1990-12-21","1989-10-17","1967-06-15","1990-10-08"]

  0.upto(8) do |idx|
    User.create(
      name: names[idx],
      password: "password",
      introduction: intros[idx],
      birthday:birthday[idx%4],
      admin: idx%2,
      email: "ifelifff@yahoo.co.jp"
    )

  end
    
    
    