import UIKit

struct PokemonCell {
    let name: String
    let imageURL: String
    let cellColor: UIColor
}

enum PokedexModels {
    enum FetchPokemonList {
        struct Response: Model {
            let pokemons: [Pokemon]
        }
        
        struct ViewModel {
            let pokemonCells: [PokemonCell]
        }
    }
}
