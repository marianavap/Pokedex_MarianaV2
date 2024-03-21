import XCTest
@testable import Pokedex

class PokemonInfoFactoryTests: XCTestCase {
    func test_makeController_returns_a_PokemonInfoVIewController() {
        let sut = PokemonInfoFactory.makeController(currentPokemon: Seeds.dummyPokemon, infoType: .games)
        XCTAssertNotNil(sut as? PokemonInfoViewController)
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
