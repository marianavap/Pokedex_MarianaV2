@testable import Pokedex

class PokedexRouterSpy: PokedexDataPassing {
    var dataStore: PokedexDataStore?

    var routeToDetailsScreenCalled = false
}

extension PokedexRouterSpy: PokedexRoutingLogic {
    func routeToDetailsScreen() {
        routeToDetailsScreenCalled = true
    }
}
