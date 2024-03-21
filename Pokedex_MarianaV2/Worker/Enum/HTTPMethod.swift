import Foundation

enum HTTPMethod {
    case get
    case post
    
    var type: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        }
    }
}
