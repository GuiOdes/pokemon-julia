include("../model/Pokemon.jl")

function sofrerDano(pokemon::Pokemon, dano::Float64)
    pokemon.pontosVida -= dano
end

function curar(pokemon::Pokemon, cura::Float64)
    pokemon.pontosVida += cura
end