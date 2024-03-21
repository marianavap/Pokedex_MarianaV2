import XCTest
@testable import Pokedex

class PokedexPresenterTests: XCTestCase {
    var sut: PokedexPresenter!
    var viewControllerSpy: PokedexViewControllerSpy!
    
    override func setUp() {
        super.setUp()
        viewControllerSpy = PokedexViewControllerSpy()
        sut = PokedexPresenter(viewController: viewControllerSpy)
    }
    
    func test_presentPokemonList_calls_the_displayPokemonList_viewController_method() {
        sut.presentPokemonList(response: .init(pokemons: Seeds.dummyPokemons))
        XCTAssertTrue(viewControllerSpy.displayPokemonListCalled)
    }
    
    override func tearDown() {
        viewControllerSpy = nil
        sut = nil
        super.tearDown()
    }
}

//  MARK: - Helper Data
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
    static let dummyPokemons = [dummyPokemon, dummyPokemon]
}
