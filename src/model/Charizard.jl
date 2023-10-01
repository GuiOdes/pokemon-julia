include("../base/Pokemon.jl")

struct Charizard <: Pokemon
    Pokemon(
        "Charizard",
        100,
        100,
        [
            Ability("Flamethrower", 10, 10),
            Ability("Fire Blast", 20, 5),
            Ability("Wing Attack", 5, 20),
            Ability("Slash", 15, 10)
        ],
        [
            Tipo(Fogo)
        ]
    )
end