include("base/Combate.jl")
include("base/ListaPokemons.jl")
include("base/PokemonUtils.jl")
include("base/Utils.jl")

println("Escolha seu pokemon: ")
for (index, pokemon) in enumerate(listaPokemon)
    println(index, " - ", pokemon.nome)
end

print("\nFaça sua escolha -> ")
indexEscolhido = readline()
pokemonEscolhido = listaPokemon[parse(Int64, indexEscolhido)]
println("Seu pokemón escolhido é: ", pokemonEscolhido.nome)

listaSemOPokemonEscolhido = filter(x -> x != pokemonEscolhido, listaPokemon)
pokemonCpu = listaSemOPokemonEscolhido[rand(1:length(listaPokemon))]
println("Você lutará contra: ", pokemonCpu.nome)

esperaEApagaTerminal(2)

iniciarCombate(pokemonCpu, pokemonEscolhido)