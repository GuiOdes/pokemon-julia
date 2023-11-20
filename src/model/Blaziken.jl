include("Pokemon.jl")

blaziken = Pokemon(
    "Blaziken",
    364,
    372,
    262,
    284,
    [
        Habilidade("Blaze Kick", 85, "Fire"),
        Habilidade("Sky Uppercut", 85, "Fighting"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock")
    ],
    ["Fire", "Fighting"],
    100
)