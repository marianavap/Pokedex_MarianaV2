import XCTest
@testable import Pokedex

class PokemonDetailsViewControllerTests: XCTestCase {
    var sut: PokemonDetailsViewController!
    var interactorSpy: PokemonDetailsInteractorSpy!
    var routerSpy: PokemonDetailsRouterSpy!
    
    override func setUp() {
        super.setUp()
        interactorSpy = PokemonDetailsInteractorSpy()
        routerSpy = PokemonDetailsRouterSpy()
        sut = PokemonDetailsViewController()
        sut.setup(interactor: interactorSpy, router: routerSpy)
    }
    
    func test_viewDidLoad_calls_interactor_to_fetch_the_current_pokemon_details() {
        sut.viewDidLoad()
        XCTAssertTrue(interactorSpy.fetchCurrentPokemonDetailsCalled)
    }
    
    override func tearDown() {
        interactorSpy = nil
        routerSpy = nil
        sut = nil
        super.tearDown()
    }
}
