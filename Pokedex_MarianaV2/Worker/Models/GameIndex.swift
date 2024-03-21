import Foundation

struct GameIndex: Model {
    let gameIndex: Int
    let version: Reference

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }
}
