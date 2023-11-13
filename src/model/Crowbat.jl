include("Pokemon.jl")

crowbat = Pokemon(
    "Crowbat",
    1000,
    90,
    80,
    130,
    [
        Habilidade("Air Slash", 75, "Flying"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Heat Wave", 95, "Fire"),
        Habilidade("Shadow Ball", 80, "Ghost")
    ],
    ["Poison", "Flying"],
    45
)