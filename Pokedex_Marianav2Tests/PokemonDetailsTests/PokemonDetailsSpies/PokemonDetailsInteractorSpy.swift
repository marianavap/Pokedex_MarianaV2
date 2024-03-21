@testable import Pokedex

class PokemonDetailsInteractorSpy {
    var fetchCurrentPokemonDetailsCalled = false
    var favoritePokemonCalled = false
}

extension PokemonDetailsInteractorSpy: PokemonDetailsBusinessLogic {
    func fetchCurrentPokemonDetails() {
        fetchCurrentPokemonDetailsCalled = true
    }
    
    func favoritePokemon() {
        favoritePokemonCalled = true
    }
}
