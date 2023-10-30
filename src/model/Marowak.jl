include("Pokemon.jl")

marowak = Pokemon(
    "Marowak",
    60,
    80,
    110,
    50,
    [
        Habilidade("Bonemerang", 50, "Ground"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock"),
        Habilidade("Double-Edge", 120, "Normal")
    ],
    ["Ground"],
    45
)
