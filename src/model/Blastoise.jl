include("Pokemon.jl")

blastoise = Pokemon(
    "Blastoise",
    79,
    83,
    100,
    78,
    [
        Habilidade("Hydro Pump", 110, "Water"),
        Habilidade("Surf", 90, "Water"),
        Habilidade("Skull Bash", 130, "Normal"),
        Habilidade("Ice Beam", 90, "Ice")
    ],
    ["Water"],
    45
)