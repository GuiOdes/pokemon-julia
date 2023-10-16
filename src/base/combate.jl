include("../model/Pokemon.jl")
function calculoStab(Pokemon, tipoAtaque::Tipo)
    stab = 1
    for tipo in Pokemon.tipos
        if (uppercase(tipo.nome) == uppercase(tipoAtaque.nome))
            stab = 1.5
        end
    end
    return stab
end

# function ataque(ataqueStatus::Int, ataquePower::Int, defesaStatus, pokemon::Pokemon, tipoAtaque::String)
#     return ((((2*36/5+2)*ataqueStatus*ataquePower/defesaStatus)/50)+2)*calculoStab(pokemon, tipoAtaque)*1
# end