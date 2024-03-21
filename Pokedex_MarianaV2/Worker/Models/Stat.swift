import Foundation

struct Stat: Model {
    let baseStat, effort: Int
    let stat: Reference

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort, stat
    }
}
