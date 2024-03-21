import XCTest
@testable import Pokedex

class PokemonInfoInteractorSpy {
    var getCurrentPokemonInfoCalled = false
}

extension PokemonInfoInteractorSpy: PokemonInfoBusinessLogic {
    func getCurrentPokemonInfo(type: InfoType) {
        getCurrentPokemonInfoCalled = true
    }
}
