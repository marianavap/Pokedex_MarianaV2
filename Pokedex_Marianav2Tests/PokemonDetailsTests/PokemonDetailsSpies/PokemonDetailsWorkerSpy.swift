@testable import Pokedex

class PokemonDetailsWorkerSpy {
    var isFavoriteCalled = false
    var favoritePokemonCalled = false
    var addToFavoritesCalled = false
    
    var isSuccess: Bool
    
    init(isSuccess: Bool = true) {
        self.isSuccess = isSuccess
    }
}

extension PokemonDetailsWorkerSpy: PokemonDetailsWorkLogic {
    func isFavorite(pokemon: Pokemon?) -> Bool {
        isFavoriteCalled = true
        return isSuccess
    }
    
    func favoritePokemon(completion: @escaping (PokemonDetailsWorkerResult) -> Void) {
        favoritePokemonCalled = true
    }
    
    func addToFavorites(pokemon: Pokemon?) -> Bool {
        addToFavoritesCalled = true
        return true
    }
}


