import XCTest
@testable import Pokedex

class PokedexViewControllerTests: XCTestCase {
    var sut: PokedexViewController!
    var interactorSpy: PokedexInteractorSpy!
    var routerSpy: PokedexRouterSpy!
    
    override func setUp() {
        super.setUp()
        interactorSpy = PokedexInteractorSpy()
        routerSpy = PokedexRouterSpy()
        sut = PokedexViewController()
        sut.setup(interactor: interactorSpy, router: routerSpy)
    }
    
    func test_viewDidLoad_calls_interactor_to_fetch_the_pokemon_list() {
        sut.viewDidLoad()
        XCTAssertTrue(interactorSpy.fetchPokemonListCalled)
    }
    
    override func tearDown() {
        interactorSpy = nil
        routerSpy = nil
        sut = nil
        super.setUp()
    }
}
