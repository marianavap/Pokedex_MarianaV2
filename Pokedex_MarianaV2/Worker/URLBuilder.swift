import Foundation

struct URLBuilder {
    private static let baseURL = "https://pokeapi.co/api/v2/"
    
    enum PokedexEndpoint {
        case fetchPokemonReferenceList
        case favoritePokemon
        
        var path: String {
            switch self {
            case .favoritePokemon:
                return "https://webhook.site/1babfbcc-e206-4c8c-8b9f-3316f86aad13"
            case .fetchPokemonReferenceList:
                return "pokemon/?limit=10&offset=10"
            }
        }
    }
    
    static func make(withEndpoint endpoint: PokedexEndpoint) -> URL {
        switch endpoint {
        case .favoritePokemon:
            return URL(string:endpoint.path)!
        default:
            return URL(string: baseURL + endpoint.path)!
        }
    }
}
