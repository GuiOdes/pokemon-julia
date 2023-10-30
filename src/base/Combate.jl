include("../model/Pokemon.jl")
include("Habilidade.jl")
include("Utils.jl")
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

function iniciarCombate(pokemonCpu::Pokemon, pokemonEscolhido::Pokemon)
    thread1 = Threads.@spawn pokemonCpu
    thread2 = Threads.@spawn pokemonEscolhido
    while true
        esperaEApagaTerminal(4)

        println(pokemonCpu.nome, " - ", pokemonCpu.pontosVida, " HP")
        println(pokemonEscolhido.nome, " - ", pokemonEscolhido.pontosVida, " HP")
        println()

        println("Habilidades de : ", pokemonEscolhido.nome)
        for (index, habilidade) in enumerate(pokemonEscolhido.ataques)
            println(index, " - ", habilidade.nome)
        end

        print("Escolha sua habilidade -> ")
        indexHabilidadeEscolhida = readline()
        habilidadeEscolhida = pokemonEscolhido.ataques[parse(Int64, indexHabilidadeEscolhida)]

        println("Você escolheu: ", habilidadeEscolhida.nome)

        habilidadeCpu = escolherAtaqueSuperEfetivoContraPokemon(pokemonCpu, pokemonEscolhido)
        println("A CPU escolheu: ", habilidadeCpu.nome)

        esperaEApagaTerminal(3)
        
        danoAtaquePlayer = calculaDanoAtaque(pokemonEscolhido, pokemonCpu, habilidadeEscolhida)
        sofrerDano(pokemonCpu, danoAtaquePlayer)
        println("O ", pokemonCpu.nome, " sofreu ", danoAtaquePlayer, " de dano.")
        
        if(pokemonCpu.pontosVida <= 0)
            println("O ", pokemonCpu.nome, " morreu!")
            println("Você venceu a batalha!")
            break
        end

        println()
        
        danoAtaqueCpu = calculaDanoAtaque(pokemonCpu, pokemonEscolhido, habilidadeCpu)
        sofrerDano(pokemonEscolhido, danoAtaqueCpu)
        println("O ", pokemonEscolhido.nome, " sofreu ", danoAtaqueCpu, " de dano.")

        if (pokemonEscolhido.pontosVida <= 0)
            println("O ", pokemonEscolhido.nome, " morreu!")
            println("Você perdeu a batalha!")
            break
        end
    end
    Threads.wait(thread1)
    Threads.wait(thread2)
end