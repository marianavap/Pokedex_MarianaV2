import XCTest
@testable import Pokedex

class PokemonDetailsInteractorTests: XCTestCase {
    var sut: PokemonDetailsInteractor!
    var presenterSpy: PokemonDetailsPresenterSpy!
    var workerSpy: PokemonDetailsWorkerSpy!
    
    override func setUp() {
        super.setUp()
        presenterSpy = PokemonDetailsPresenterSpy()
        workerSpy = PokemonDetailsWorkerSpy()
        sut = PokemonDetailsInteractor(presenter: presenterSpy, worker: workerSpy)
    }
    
    func test_fetchCurrentPokemonDetails_calls_worker_to_get_isFavorite() {
        sut.fetchCurrentPokemonDetails()
        XCTAssertTrue(workerSpy.isFavoriteCalled)
    }
    
    func test_fetchCurrentPokemonDetails_calls_presenter_to_present_the_pokemon_details() {
        sut.fetchCurrentPokemonDetails()
        XCTAssertTrue(presenterSpy.presentPokemonDetailsCalled)
    }
    
    func test_favoritePokemon_calls_worker_to_get_pokemon_isFavorite() {
        sut.favoritePokemon()
        XCTAssertTrue(workerSpy.isFavoriteCalled)
    }
    
    func test_favoritePokemon_calls_worker_to_favorite_pokemon_when_isFavorite_returns_false() {
        workerSpy.isSuccess = false
        sut.favoritePokemon()
        XCTAssertTrue(workerSpy.favoritePokemonCalled)
    }
    
    override func tearDown() {
        presenterSpy = nil
        workerSpy = nil
        sut = nil
        super.tearDown()
    }
}
