import Foundation

struct Game: Model {
    let gameIndex: Int
    let version: Reference
    
    private enum CodingKeys : String, CodingKey {
        case gameIndex = "game_index", version
    }
}
