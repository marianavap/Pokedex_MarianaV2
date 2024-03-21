import Foundation

protocol PokemonInfoBusinessLogic {
    func getCurrentPokemonInfo(type: InfoType)
}

protocol PokemonInfoDataStore {
    var currentPokemon: Pokemon? { get }
}

class PokemonInfoInteractor: PokemonInfoDataStore {
    private var presenter: PokemonInfoPresentationLogic?
    var currentPokemon: Pokemon?
    
    init(presenter: PokemonInfoPresentationLogic?) {
        self.presenter = presenter
    }
}

extension PokemonInfoInteractor: PokemonInfoBusinessLogic {
    func getCurrentPokemonInfo(type: InfoType) {
        switch type {
        case .abilities:
            presenter?.presentPokemonAbilities(response: .init(pokemon: currentPokemon))
        case .games:
            presenter?.presentPokemonGames(response: .init(pokemon: currentPokemon))
        case .stats:
            presenter?.presentPokemonStats(response: .init(pokemon: currentPokemon))
        }
    }
}
