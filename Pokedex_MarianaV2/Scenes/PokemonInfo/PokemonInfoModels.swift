import Foundation

struct PokemonInfo {
    let title: String
    let value: Int?
}

enum PokemonInfoModels {
    enum DisplayPokemonInfo {
        struct Response {
            let pokemon: Pokemon?
        }
        struct ViewModel {
            let pageTitle: String
            let infoList: [PokemonInfo]
        }
    }
}
