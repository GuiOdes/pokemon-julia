include("model/Charizard.jl")

try
    charizard = Charizard()
    println(charizard.nome)
catch y
    println("Deu ruim: $y")
end