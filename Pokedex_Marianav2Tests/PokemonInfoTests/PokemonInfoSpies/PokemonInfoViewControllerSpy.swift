import XCTest
@testable import Pokedex

class PokemonInfoViewControllerSpy {
    var displayPokemonInfoCalled = false
}

extension PokemonInfoViewControllerSpy: PokemonInfoDisplayLogic {
    func displayPokemonInfo(viewModel: PokemonInfoModels.DisplayPokemonInfo.ViewModel) {
        displayPokemonInfoCalled = true
    }
}
