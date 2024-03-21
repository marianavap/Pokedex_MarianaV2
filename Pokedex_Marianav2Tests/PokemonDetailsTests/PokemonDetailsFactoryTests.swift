import XCTest
@testable import Pokedex

class PokemonDetailsFactoryTests: XCTestCase {
    func test_makeController_returns_a_PokemonDetailsVIewController() {
        let sut = PokemonDetailsFactory.makeController(currentPokemon: Seeds.dummyPokemon)
        XCTAssertNotNil(sut as? PokemonDetailsViewController)
    }
}

//  MARK: - Helper data
fileprivate struct Seeds {
    static let dummyPokemon = Pokemon(
        abilities: [],
        gameIndices: [],
        height: 10,
        id: 10,
        name: "Test",
        order: 1,
        sprites: nil,
        stats: [],
        types: [],
        weight: 10
    )
}
