include("Pokemon.jl")

slowbro = Pokemon(
    "Slowbro",
    95,
    75,
    110,
    30,
    [
        Habilidade("Surf", 90, "Water"),
        Habilidade("Ice Beam", 90, "Ice"),
        Habilidade("Psychic", 90, "Psychic"),
        Habilidade("Thunderbolt", 90, "Electric")
    ],
    ["Water", "Psychic"],
    45
)