include("Pokemon.jl")

raichu = Pokemon(
    "Raichu",
    324,
    306,
    284,
    350,
    [
        Habilidade("Thunderbolt", 90, "Electric"),
        Habilidade("Thunder", 110, "Electric"),
        Habilidade("Body Slam", 85, "Normal"),
        Habilidade("Mega Kick", 120, "Normal")
    ],
    ["Electric"],
    100
)