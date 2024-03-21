@testable import Pokedex

class PokemonDetailsViewControlllerSpy {
    var displayPokemonDetailsCalled = false
    var displayAddedToFavoritesCalled = false
    var displayAddingToFavoritesErrorCalled = false
}

extension PokemonDetailsViewControlllerSpy: PokemonDetailsDisplayLogic {
    func displayAddingToFavoritesError(viewModel: PokemonDetailsModels.DisplayAddedToFavorites.ViewModel) {
        displayAddingToFavoritesErrorCalled = true
    }
    
    func displayPokemonDetails(viewModel: PokemonDetailsModels.DisplayPokemonDetails.ViewModel) {
        displayPokemonDetailsCalled = true
    }
    
    func displayAddedToFavorites(viewModel: PokemonDetailsModels.DisplayAddedToFavorites.ViewModel) {
        displayAddedToFavoritesCalled = true
    }
}
