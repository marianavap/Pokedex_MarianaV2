import Foundation

struct Sprites: Model {
    static func == (lhs: Sprites, rhs: Sprites) -> Bool {
        return lhs.other == rhs.other
    }
    
    let backDefault: String
    let frontDefault: String
    let other: Other?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case frontDefault = "front_default"
        case other
    }
}
