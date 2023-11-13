include("Pokemon.jl")

crobat = Pokemon(
    "Crobat",
    374,
    306,
    284,
    394,
    [
        Habilidade("Air Slash", 75, "Flying"),
        Habilidade("Sludge Bomb", 90, "Poison"),
        Habilidade("Heat Wave", 95, "Fire"),
        Habilidade("Shadow Ball", 80, "Ghost")
    ],
    ["Poison", "Flying"],
    100
)