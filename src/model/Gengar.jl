include("Pokemon.jl")

gengar = Pokemon(
    "Gengar",
    324,
    394,
    273,
    350,
    [
        Habilidade("Shadow Ball", 80, "Ghost"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Psychic", 90, "Psychic"),
        Habilidade("Thunderbolt", 90, "Electric")
    ],
    ["Ghost", "Poison"],
    100
)