include("Pokemon.jl")

raichu = Pokemon(
    "Raichu",
    60,
    90,
    55,
    100,
    [
        Habilidade("Thunderbolt", 90, "Electric"),
        Habilidade("Thunder", 110, "Electric"),
        Habilidade("Body Slam", 85, "Normal"),
        Habilidade("Mega Kick", 120, "Normal")
    ],
    ["Electric"],
    45
)