include("Pokemon.jl")

sceptile = Pokemon(
    "Sceptile",
    344,
    339,
    295,
    372,
    [
        Habilidade("Leaf Blade", 90, "Grass"),
        Habilidade("Dragon Claw", 80, "Dragon"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Grass"],
    100
)