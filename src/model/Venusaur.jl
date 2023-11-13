include("Pokemon.jl")
include("../base/Habilidade.jl")

venusaur = Pokemon(
    "Venusaur",
    1000,
    82,
    83,
    80,
    [
        Habilidade("Giga Drain", 75, "Grass"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Body Slam", 85, "Normal")
    ],
    ["Grass", "Poison"],
    45
)