import Foundation

protocol PokemonDetailsBusinessLogic {
    func fetchCurrentPokemonDetails()
    func favoritePokemon()
}

protocol PokemonDetailsDataStore {
    var currentPokemon: Pokemon? { get }
}

class PokemonDetailsInteractor: PokemonDetailsDataStore {
    private var worker: PokemonDetailsWorkLogic?
    private var presenter: PokemonDetailsPresentationLogic?
    var currentPokemon: Pokemon?
    
    init(presenter: PokemonDetailsPresentationLogic, worker: PokemonDetailsWorkLogic) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension PokemonDetailsInteractor: PokemonDetailsBusinessLogic {
    func fetchCurrentPokemonDetails() {
        presenter?.presentPokemonDetails(
            response: .init(
                currentPokemon: currentPokemon,
                isFavorite: worker?.isFavorite(pokemon: currentPokemon) ?? false)
        )
    }
    
    func favoritePokemon() {
        if let isFavorite = worker?.isFavorite(pokemon: currentPokemon), !isFavorite {
            worker?.favoritePokemon(completion: { [weak self] result in
                guard let self = self else { return }
                switch result {
                case .failure:
                    self.presenter?.presentAddingToFavoritesError()
                case .success:
                    self.addToFavorites(pokemon: self.currentPokemon)
                }
            })
        } else {
            addToFavorites(pokemon: currentPokemon)
        }
    }
    
    private func addToFavorites(pokemon: Pokemon?) {
        guard let worker = worker, let pokemon = pokemon else { return }
        let addedToFavorites = worker.addToFavorites(pokemon: pokemon)
        presenter?.presentAddedToFavorites(response: .init(wasAdded: addedToFavorites, error: nil))
    }
}
