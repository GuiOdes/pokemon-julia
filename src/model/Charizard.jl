include("Pokemon.jl")
include("../base/Habilidade.jl")
include("../base/Tipo.jl")

charizard = Pokemon(
    "Charizard",
    78,
    98,
    100,
    [
        Habilidade("Flamethrower", 100, Tipo("Fire"))
    ],
    [
        Tipo("Fire"), Tipo("Flying")
    ]
)