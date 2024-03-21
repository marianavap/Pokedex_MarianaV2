import XCTest
@testable import Pokedex

class PokemonInfoPresenterSpy {
    var presentPokemonGamesCalled = false
    var presentPokemonStatsCalled = false
    var presentPokemonAbilitiesCalled = false
}

extension PokemonInfoPresenterSpy: PokemonInfoPresentationLogic {
    func presentPokemonGames(
        response: PokemonInfoModels.DisplayPokemonInfo.Response
    ) {
        presentPokemonGamesCalled = true
    }
    
    func presentPokemonStats(
        response: PokemonInfoModels.DisplayPokemonInfo.Response
    ) {
        presentPokemonStatsCalled = true
    }
    
    func presentPokemonAbilities(
        response: PokemonInfoModels.DisplayPokemonInfo.Response
    ) {
        presentPokemonAbilitiesCalled = true
    }
}
