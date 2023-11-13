
include("../base/Habilidade.jl")

mutable struct Pokemon
    nome::String
    pontosVida::Int
    ataque::Int
    defesa::Int
    velocidade::Int
    ataques::Array{Habilidade}
    tipos::Array{String}
    nivel::Int
end