import Foundation

struct Pokemon: Model {
    let abilities: [Ability]
    let gameIndices: [GameIndex]
    let height: Int
    let id: Int
    let name: String
    let order: Int
    let sprites: Sprites?
    let stats: [Stat]
    let types: [TypeElement]
    let weight: Int
    
    enum CodingKeys: String, CodingKey {
        case abilities
        case gameIndices = "game_indices"
        case height
        case id
        case name, order, sprites, stats, types, weight
    }
}
