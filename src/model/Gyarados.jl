include("Pokemon.jl")

gyarados = Pokemon(
    "Gyarados",
    394,
    383,
    328,
    287,
    [
        Habilidade("Hydro Pump", 110, "Water"),
        Habilidade("Hyper Beam", 150, "Normal"),
        Habilidade("Dragon Rage", 40, "Dragon"),
        Habilidade("Bite", 60, "Dark")
    ],
    ["Water", "Flying"],
    100
)