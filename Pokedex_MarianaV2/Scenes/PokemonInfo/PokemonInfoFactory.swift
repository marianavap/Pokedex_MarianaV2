import UIKit

enum InfoType {
    case abilities
    case games
    case stats
}

struct PokemonInfoFactory {
    static func makeController(currentPokemon: Pokemon?, infoType: InfoType) -> UIViewController {
        let viewController = PokemonInfoViewController()
        let presenter = PokemonInfoPresenter(viewController: viewController)
        let interactor = PokemonInfoInteractor(presenter: presenter)
        interactor.currentPokemon = currentPokemon
        viewController.setup(interactor: interactor, infoType: infoType)
        return viewController
    }
}

