include("Pokemon.jl")

marowak = Pokemon(
    "marowak",
    324,
    284,
    350,
    207,
    [
        Habilidade("Bonemerang", 50, "Ground"),
        Habilidade("Earthquake", 100, "Ground"),
        Habilidade("Rock Slide", 75, "Rock"),
        Habilidade("Double-Edge", 120, "Normal")
    ],
    ["Ground"],
    100
)
