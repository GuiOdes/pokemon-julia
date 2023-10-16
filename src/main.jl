include("model/Charizard.jl")
include("model/venusaur.jl")
include("base/combate.jl")

println("Nome -> ", charizard.nome)
println("Pontos Vida -> ", charizard.pontosVida)
println("Ataque -> ", charizard.ataque)
println("Defesa -> ", charizard.defesa)
println("Ataques -> ", charizard.ataques)
println("Tipos -> ", charizard.tipos)


print("Stab ->", calculoStab(charizard, charizard.ataques[1].type))

