include("Pokemon.jl")

snorlax = Pokemon(
    "Snorlax",
    524,
    350,
    350,
    174,
    [
        Habilidade("Body Slam", 85, "Normal"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Hyper Beam", 150, "Normal"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Normal"],
    100
)