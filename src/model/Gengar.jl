include("Pokemon.jl")

gengar = Pokemon(
    "Gengar",
    60,
    65,
    60,
    110,
    [
        Habilidade("Shadow Ball", 80, "Ghost"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Psychic", 90, "Psychic"),
        Habilidade("Thunderbolt", 90, "Electric")
    ],
    ["Ghost", "Poison"],
    45
)