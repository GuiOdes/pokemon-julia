include("Pokemon.jl")

slowbro = Pokemon(
    "Slowbro",
    394,
    350,
    328,
    174,
    [
        Habilidade("Surf", 90, "Water"),
        Habilidade("Ice Beam", 90, "Ice"),
        Habilidade("Psychic", 90, "Psychic"),
        Habilidade("Thunderbolt", 90, "Electric")
    ],
    ["Water", "Psychic"],
    100
)