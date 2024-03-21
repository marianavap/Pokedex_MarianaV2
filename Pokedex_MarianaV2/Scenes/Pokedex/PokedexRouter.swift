import UIKit

protocol PokedexRoutingLogic {
    func routeToDetailsScreen()
}

protocol PokedexDataPassing {
    var dataStore: PokedexDataStore? { get }
}

class PokedexRouter: PokedexDataPassing, PokedexRoutingLogic {
    var dataStore: PokedexDataStore?
    private weak var viewController: PokedexViewController?
    
    init(dataStore: PokedexDataStore, viewController: PokedexViewController) {
        self.dataStore = dataStore
        self.viewController = viewController
    }
    
    func routeToDetailsScreen() {
        let vc = PokemonDetailsFactory.makeController(currentPokemon: dataStore?.currentPokemon)
        viewController?.show(vc, sender: true)
    }
}
