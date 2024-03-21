import Foundation

protocol ViewCode {
    func setupView()
    func buildViewHierarchy()
    func setupConstraints()
    func additionalConfigurations()
}

extension ViewCode {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        additionalConfigurations()
    }
    
    func additionalConfigurations() {}
}
