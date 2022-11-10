animals = ['lion', 'seal', 'golden_retriever', 'beaver']

characteristics = [
  [
    "Má rád kontrolu",
    "Entuziastický",
    "Citlivý",
    "Konzistentný"
  ],
  %w[Sebavedomý Vizionár Pokojný Rezervovaný],
  %w[Neústupný Energický Nenáročný Praktický],
  [
    "Má rád výzvy",
    "Promotér",
    "Má rád rutinu",
    "Má rád fakty"
  ],
  [
    "Rád hľadá riešenie problémov",
    "Ľahko sa zoznamuje",
    "Vzťahový",
    "Perfekcionista"
  ],
  [
    "Odvážny",
    "Má rád zábavu",
    "Prispôsobivý",
    "Detailista"
  ]
]

characteristics.each do |line|
  question = Question.create!

  4.times do |index|
    Option.create!(question: question, text: line[index], animal: animals[index])
  end
end