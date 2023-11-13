include("Pokemon.jl")

snorlax = Pokemon(
    "Snorlax",
    1000,
    110,
    65,
    30,
    [
        Habilidade("Body Slam", 85, "Normal"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Hyper Beam", 150, "Normal"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Normal"],
    45
)