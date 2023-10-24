include("../model/Pokemon.jl")
include("Habilidade.jl")
include("CalculoResistencia.jl")

function calculoStab(Pokemon, tipoAtaque::String)
    stab = 1
    for tipo in Pokemon.tipos
        if (uppercase(tipo) == uppercase(tipoAtaque))
            stab = 1.5
        end
    end
    return stab
end

function calculoChanceCritico()
    random = rand(0:100)
    if (random <= 6.25)
        println("Crítico!")
        return 1.5
    else
        return 1
    end
end

function calculaDanoAtaque(pokemonAtaque::Pokemon, pokemonDefesa::Pokemon, ataque::Habilidade)
    efetividadeTotal = 1
    for tipoPokemon in pokemonDefesa.tipos 
        efetividadeTotal *= efetividadeDeTipo[uppercase(ataque.tipo)][uppercase(tipoPokemon)]
        println("Efetividade de " * ataque.tipo * " contra " * tipoPokemon * ": " * string(efetividadeDeTipo[uppercase(ataque.tipo)][uppercase(tipoPokemon)]))
        println("Efetividade total: " * string(efetividadeTotal) * "\n")
    end
    
    if (efetividadeTotal > 1)
        println("Ataque super efetivo!")
    elseif (efetividadeTotal < 1)
        println("Ataque não muito efetivo...")
    else
        println("Ataque normal.")
    end

    return round(((((((2*36/5+2)*pokemonAtaque.ataque*ataque.danoBase/pokemonDefesa.defesa) / 50) + 2) 
    * calculoStab(pokemonAtaque, ataque.tipo)) * calculoChanceCritico() * efetividadeTotal) * ((rand(80:100))/100), digits=0)
end