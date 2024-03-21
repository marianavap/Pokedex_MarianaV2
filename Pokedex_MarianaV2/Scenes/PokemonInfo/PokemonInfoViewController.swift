import UIKit

protocol PokemonInfoDisplayLogic: AnyObject {
    func displayPokemonInfo(viewModel: PokemonInfoModels.DisplayPokemonInfo.ViewModel)
}

class PokemonInfoViewController: UIViewController {
    private var interactor: PokemonInfoBusinessLogic?
    private var infoType: InfoType?
    
    override func loadView() {
        view = PokemonInfoView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getCurrentPokemonInfo(type: infoType ?? .stats)
    }
    
    func setup(interactor: PokemonInfoBusinessLogic, infoType: InfoType) {
        self.interactor = interactor
        self.infoType = infoType
    }
}

//MARK: - PokemonInfoDisplayLogic
extension PokemonInfoViewController: PokemonInfoDisplayLogic {
    func displayPokemonInfo(viewModel: PokemonInfoModels.DisplayPokemonInfo.ViewModel) {
        guard let view = view as? PokemonInfoView else { return }
        view.update(viewModel: viewModel)
    }
}
