import UIKit

protocol PokedexPresentationLogic {
    func presentPokemonList(response: PokedexModels.FetchPokemonList.Response)
}

class PokedexPresenter {
    private weak var viewController: PokedexDisplayLogic?
    
    init(viewController: PokedexDisplayLogic) {
        self.viewController = viewController
    }
}

//  MARK: - PokedexPresentationLogic
extension PokedexPresenter: PokedexPresentationLogic {
    func presentPokemonList(response: PokedexModels.FetchPokemonList.Response) {
        var cells: [PokemonCell] = []
        for pokemon in response.pokemons {
            cells.append(
                PokemonCell(
                    name: pokemon.name,
                    imageURL: pokemon.sprites?.other?.officialArtwork.frontDefault ?? "",
                    cellColor: getCellColor(for: pokemon)
                )
            )
        }
        viewController?.displayPokemonList(
            viewModel: PokedexModels.FetchPokemonList.ViewModel(pokemonCells: cells)
        )
    }
}

//  MARK: - Helpers
extension PokedexPresenter {
    private func getCellColor(for pokemon: Pokemon) -> UIColor {
        let names = getTypesNames(for: pokemon)
        guard let name = names.last else { return .gray }
        let tag = TagLabel(title: name)
        return tag.backgroundColor ?? .gray
    }
    
    private func getTypesNames(for pokemon: Pokemon) -> [String] {
        var names: [String] = []
        for type in pokemon.types {
            names.append(type.type.name)
        }
        return names
    }
}
