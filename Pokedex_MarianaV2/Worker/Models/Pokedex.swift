import Foundation

protocol Model: Codable, Equatable {}

struct Pokedex: Model {
    let count: Int
    let next: String
    let previous: String
    let results: [Reference]
}
