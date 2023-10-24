include("model/Sceptile.jl")
include("model/Venusaur.jl")
include("model/Snorlax.jl")
include("model/Gyarados.jl")
include("base/Combate.jl")

sceptileBatalha = sceptile.pontosVida
danoAtaque = calculaDanoAtaque(gyarados, sceptile, gyarados.ataques[1])
println("Sceptile: " * string(sceptileBatalha) * " HP\n")
sceptileBatalha -= danoAtaque
println(danoAtaque)
println("Sceptile: " * string(sceptileBatalha) * " HP\n")

venusaurBatalha = venusaur.pontosVida
danoAtaque2 = calculaDanoAtaque(gyarados, venusaur, gyarados.ataques[1])
println("Venusaur: " * string(venusaurBatalha) * " HP\n")
venusaurBatalha -= danoAtaque2
println(danoAtaque2)
println("Venusaur: " * string(venusaurBatalha) * " HP\n")

snorlaxBatalha = snorlax.pontosVida
danoAtaque3 = calculaDanoAtaque(gyarados, snorlax, gyarados.ataques[1])
println("Snorlax: " * string(snorlaxBatalha) * " HP\n")
snorlaxBatalha -= danoAtaque3
println(danoAtaque3)
println("Snorlax: " * string(snorlaxBatalha) * " HP\n")