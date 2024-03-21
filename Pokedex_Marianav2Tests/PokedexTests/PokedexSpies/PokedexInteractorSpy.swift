@testable import Pokedex

class PokedexInteractorSpy {
    var fetchPokemonListCalled = false
    var setCurrentCalled = false
    var setCurrentPokemonCalled = false
}

extension PokedexInteractorSpy: PokedexBusinessLogic {
    func setCurrentPokemon(at index: Int, withQuery query: String?) {
        setCurrentPokemonCalled = true
    }
    
    func fetchPokemonList() {
        fetchPokemonListCalled = true
    }
    
    func setCurrent(pokemon: Pokemon) {
        setCurrentCalled = true
    }
}

