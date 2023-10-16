include("Pokemon.jl")
include("../base/Habilidade.jl")
include("../base/Tipo.jl")

venusaur = Pokemon(
    "venusaur",
    80,
    82,
    83,
    80,
    [
        Habilidade("Giga Drain", 75, Tipo("Grass"))
    ],
    [
        Tipo("Grass"), Tipo("Poison")
    ]
)