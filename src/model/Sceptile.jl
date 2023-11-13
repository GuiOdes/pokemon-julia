include("Pokemon.jl")

sceptile = Pokemon(
    "Sceptile",
    1000,
    85,
    65,
    120,
    [
        Habilidade("Leaf Blade", 90, "Grass"),
        Habilidade("Dragon Claw", 80, "Dragon"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Grass"],
    45
)