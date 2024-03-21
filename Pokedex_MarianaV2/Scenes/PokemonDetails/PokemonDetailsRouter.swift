import UIKit

protocol PokemonDetailsRoutingLogic {
    func routeToAbilitiesScreen()
    func routeToStatsScreen()
    func routeToGamesScreen()
}

protocol PokemonDetailsDataPassing {
    var dataStore: PokemonDetailsDataStore? { get }
}

class PokemonDetailsRouter: PokemonDetailsDataPassing, PokemonDetailsRoutingLogic {
    var dataStore: PokemonDetailsDataStore?
    private weak var viewController: PokemonDetailsViewController?
    
    init(dataStore: PokemonDetailsDataStore?, viewController: PokemonDetailsViewController) {
        self.dataStore = dataStore
        self.viewController = viewController
    }
    
    func routeToAbilitiesScreen() {
        let vc = PokemonInfoFactory.makeController(
            currentPokemon: dataStore?.currentPokemon,
            infoType: .abilities
        )
        viewController?.present(vc, animated: true)
    }
    
    func routeToStatsScreen() {
        let vc = PokemonInfoFactory.makeController(
            currentPokemon: dataStore?.currentPokemon,
            infoType: .stats
        )
        viewController?.present(vc, animated: true)
    }
    
    func routeToGamesScreen() {
        let vc = PokemonInfoFactory.makeController(
            currentPokemon: dataStore?.currentPokemon,
            infoType: .games
        )
        viewController?.present(vc, animated: true)
    }
}
