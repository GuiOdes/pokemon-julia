include("Pokemon.jl")
include("../base/Habilidade.jl")

charizard = Pokemon(
    "Charizard",
    1000,
    84,
    78,
    100,
    [
        Habilidade("Flamethrower", 100, "Fire"),
        Habilidade("Fire Blast", 110, "Fire"),
        Habilidade("Wing Attack", 60, "Flying"),
        Habilidade("Slash", 70, "Normal")
    ],
    ["Fire", "Flying"],
    45
)