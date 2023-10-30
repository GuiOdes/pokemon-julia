include("base/Combate.jl")
include("base/ListaPokemons.jl")

println("Escolha seu pokemon: ")
for (index, pokemon) in enumerate(listaPokemon)
    println(index, " - ", pokemon.nome)
end

indexEscolhido = readline()
pokemonEscolhido = listaPokemon[parse(Int64, indexEscolhido)]
println("Seu pokemón escolhido é: ", pokemonEscolhido.nome)

listaSemOPokemonEscolhido = filter(x -> x != pokemonEscolhido, listaPokemon)
pokemonAleatorio = listaSemOPokemonEscolhido[rand(1:length(listaPokemon))]
println("Você lutará contra: ", pokemonAleatorio.nome)

sleep(3)
print("\033c")  