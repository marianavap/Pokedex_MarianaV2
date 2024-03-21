import Foundation

protocol Networking {
    var session: URLSession { get set }
    func makeRequest(withURL url: URL, method: HTTPMethod) -> URLRequest
}
