@testable import Pokedex

class PokemonDetailsPresenterSpy {
    var presentPokemonDetailsCalled = false
    var presentAddedToFavoritesCalled = false
    var presentAddingToFavoritesErrorCalled = false
}

extension PokemonDetailsPresenterSpy: PokemonDetailsPresentationLogic {
    func presentAddingToFavoritesError() {
        presentAddingToFavoritesErrorCalled = true
    }
    
    func presentPokemonDetails(response: PokemonDetailsModels.DisplayPokemonDetails.Response) {
        presentPokemonDetailsCalled = true
    }
    
    func presentAddedToFavorites(response: PokemonDetailsModels.DisplayAddedToFavorites.Response) {
        presentAddedToFavoritesCalled = true
    }
}
