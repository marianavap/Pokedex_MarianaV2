@testable import Pokedex

class PokedexViewControllerSpy {
    var displayPokemonListCalled = false
}

extension PokedexViewControllerSpy: PokedexDisplayLogic {
    func displayPokemonList(viewModel: PokedexModels.FetchPokemonList.ViewModel) {
        displayPokemonListCalled = true
    }
}
