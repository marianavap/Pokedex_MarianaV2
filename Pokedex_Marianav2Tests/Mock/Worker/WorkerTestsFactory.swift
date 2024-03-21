import Foundation

struct WorkerTestsFactory {
    static func makeSessionMock() -> URLSession {
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.protocolClasses = [URLProtocolMock.self]
        return URLSession(configuration: sessionConfig)
    }
}
