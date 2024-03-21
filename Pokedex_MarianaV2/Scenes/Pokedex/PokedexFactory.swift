import UIKit

struct PokedexFactory {
    static func makeController() -> UIViewController {
        let viewController = PokedexViewController()
        let worker = PokedexWorker()
        let presenter = PokedexPresenter(viewController: viewController)
        let interactor = PokedexInteractor(presenter: presenter, worker: worker)
        let router = PokedexRouter(dataStore: interactor, viewController: viewController)
        viewController.setup(interactor: interactor, router: router)
        return viewController
    }
}
