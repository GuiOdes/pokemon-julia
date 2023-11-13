include("Pokemon.jl")

blaziken = Pokemon(
    "Blaziken",
    1000,
    120,
    70,
    80,
    [
        Habilidade("Blaze Kick", 85, "Fire"),
        Habilidade("Sky Uppercut", 85, "Fighting"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Fire", "Fighting"],
    45
)