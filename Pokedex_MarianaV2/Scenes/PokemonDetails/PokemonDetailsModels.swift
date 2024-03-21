import UIKit

enum PokemonDetailsModels {
    enum DisplayPokemonDetails {
        struct Response: Model {
            let currentPokemon: Pokemon?
            let isFavorite: Bool
        }
        
        struct ViewModel {
            let id: String
            let name: String
            let isFavorite: Bool
            let height: String
            let weight: String
            let imageUrl: String
            let tags: [TagLabel]
            let gradientColors: [UIColor]
        }
    }
    
    enum DisplayAddedToFavorites {
        struct Response: Model {
            let wasAdded: Bool?
            let error: String?
        }
        
        struct ViewModel {
            let isFavorite: Bool?
            let errorAlert: UIAlertController?
        }
    }
}
