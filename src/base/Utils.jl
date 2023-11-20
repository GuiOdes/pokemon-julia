include("CalculoResistencia.jl")

Sys.iswindows() ? comando = `cls` : comando = `clear`

function esperaEApagaTerminal(segundos::Int64)
    sleep(segundos)
    run(comando)
end

function escolherAtaqueSuperEfetivoContraPokemon(pokemonAtaque::Pokemon, pokemonDefesa::Pokemon)
    for ataque in pokemonAtaque.ataques
        efetividadeTotal = 1
        for tipoPokemon in pokemonDefesa.tipos 
            efetividadeTotal *= efetividadeDeTipo[uppercase(ataque.tipo)][uppercase(tipoPokemon)]
        end
        if (efetividadeTotal > 1)
            return ataque
        end
    end
    return pokemonAtaque.ataques[rand(1:length(pokemonAtaque.ataques))]
end