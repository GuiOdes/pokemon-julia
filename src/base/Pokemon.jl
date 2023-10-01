include("Pokemon.jl")
include("Habilidade.jl")

struct Pokemon
    nome::String
    pontosVida::Int
    forca::Int
    ataques::Vector{Habilidade}
    tipos::Tipo
end