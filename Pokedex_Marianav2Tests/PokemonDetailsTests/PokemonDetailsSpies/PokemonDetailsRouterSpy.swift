@testable import Pokedex

class PokemonDetailsRouterSpy: PokemonDetailsDataPassing {
    var dataStore: PokemonDetailsDataStore?
    
    var routeToAbilitiesScreenCalled = false
    var routeToStatsScreenCalled = false
    var routeToGamesScreenCalled = false
}

extension PokemonDetailsRouterSpy: PokemonDetailsRoutingLogic {
    func routeToAbilitiesScreen() {
        routeToAbilitiesScreenCalled = true
    }
    
    func routeToStatsScreen() {
        routeToStatsScreenCalled = true
    }
    
    func routeToGamesScreen() {
        routeToGamesScreenCalled = true
    }
}
