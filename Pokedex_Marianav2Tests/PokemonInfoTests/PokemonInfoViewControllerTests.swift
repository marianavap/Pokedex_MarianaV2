import XCTest
@testable import Pokedex

class PokemonInfoViewControllerTests: XCTestCase {
    var sut: PokemonInfoViewController!
    var interactorSpy: PokemonInfoInteractorSpy!
    
    override func setUp() {
        super.setUp()
        interactorSpy = PokemonInfoInteractorSpy()
        sut = PokemonInfoViewController()
        sut.setup(interactor: interactorSpy, infoType: .games)
    }
    
    func test_viewDidLoad_calls_interactor_to_get_the_current_pokemon_info() {
        sut.viewDidLoad()
        XCTAssertTrue(interactorSpy.getCurrentPokemonInfoCalled)
    }
    
    override func tearDown() {
        interactorSpy = nil
        sut = nil
        super.tearDown()
    }
}
