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
  ],
  [
    "Cieľavedomý",
    "Spontánny",
    "Hĺbavý",
    "Zvedavý"
  ],
  [
    "Má silnú vôľu",
    "Má rád nové nápady",
    "Trpezlivý",
    "Vytrvalý"
  ],
  [
    "Samostatný",
    "Optimistický",
    "Dobrý poslucháč",
    "Citlivý"
  ],
  [
    "Vytrvalý",
    "Dokáže riskovať",
    "Lojálny",
    "Presný"
  ],
  [
    "Preberá vedenie",
    "Motivátor",
    "Stojí pevne na oboch nohách",
    "Kontrolujúci sa"
  ],
  [
    "Odhodlaný",
    "Veľmi výrečný",
    "Ľahko sa poddá",
    "Predvídateľný"
  ],
  [
    "Podnikavý",
    "Priateľský",
    "Nerozhodný",
    "Svedomitý"
  ],
  [
    "Súťaživý",
    "Populárny",
    "Nemá rád zmeny",
    "Vie posúdiť veci"
  ],
  [
    "Produktívny",
    "Má rád rôznorodosť",
    "Empatický",
    "Analytický"
  ],
  [
    "Rozhodný",
    "Zameraný na skupinu",
    "Starostlivý",
    "Precízny"
  ],
  [
    "Dobrodružný",
    "Iniciátor",
    "Tolerantný",
    "Rád funguje podľa plánu"
  ],
  [
    "Nezávislý",
    "Inšpirujúci",
    "Prináša pokoj",
    "Zámerný"
  ],
  [
    "Podnikavý",
    "Má rád zmeny",
    "Suchý humor",
    "Usporiadaný"
  ],
]

characteristics.each do |line|
  question = Question.create!

  4.times do |index|
    Option.create!(question: question, text: line[index], animal: animals[index])
  end
end

