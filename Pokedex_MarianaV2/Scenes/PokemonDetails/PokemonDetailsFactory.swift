import UIKit

struct PokemonDetailsFactory {
    static func makeController(currentPokemon: Pokemon?) -> UIViewController {
        let viewController = PokemonDetailsViewController()
        let worker = PokemonDetailsWorker()
        let presenter = PokemonDetailsPresenter(viewController: viewController)
        let interactor = PokemonDetailsInteractor(presenter: presenter, worker: worker)
        interactor.currentPokemon = currentPokemon
        let router = PokemonDetailsRouter(dataStore: interactor, viewController: viewController)
        viewController.setup(interactor: interactor, router: router)
        return viewController
    }
}
