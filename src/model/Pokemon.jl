
include("../base/Habilidade.jl")

struct Pokemon
    nome::String
    pontosVida::Int
    ataque::Int
    defesa::Int
    ataques::Array{Habilidade}
    tipos::Array{Tipo}
end