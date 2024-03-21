@testable import Pokedex

class PokedexPresenterSpy {
    var presentPokemonListCalled = false
}

extension PokedexPresenterSpy: PokedexPresentationLogic {
    func presentPokemonList(response: PokedexModels.FetchPokemonList.Response) {
        presentPokemonListCalled = true
    }
}
