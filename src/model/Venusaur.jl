include("Pokemon.jl")
include("../base/Habilidade.jl")

venusaur = Pokemon(
    "venusaur",
    364,
    328,
    328,
    284,
    [
        Habilidade("Giga Drain", 75, "Grass"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Body Slam", 85, "Normal")
    ],
    ["Grass", "Poison"],
    100
)