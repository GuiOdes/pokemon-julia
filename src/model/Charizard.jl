include("Pokemon.jl")
include("../base/Habilidade.jl")

charizard = Pokemon(
    "Charizard",
    360,
    348,
    295,
    328,
    [
        Habilidade("Flamethrower", 100, "Fire"),
        Habilidade("Fire Blast", 110, "Fire"),
        Habilidade("Wing Attack", 60, "Flying"),
        Habilidade("Slash", 70, "Normal")
    ],
    ["Fire", "Flying"],
    100
)