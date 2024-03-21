import UIKit
import SnapKit

class PokedexTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setupView()
    }
    
    lazy var roundedView: UIView = {
        let view = UIView(frame: CGRect(x: .zero, y: .zero, width: 100, height: 100))
        view.addShadow()
        return view
    }()
    
    lazy var pokemonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .whisperColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var nameLabel: PaddingLabel = {
        let label = PaddingLabel(withInsets: 8, 8, 24, 8)
        label.font = .pokedexCellItem
        label.textColor = .white
        return label
    }()
    
    private lazy var chevronLabel: PaddingLabel = {
        let label = PaddingLabel(withInsets: 8, 8, 8, 8)
        label.font = .pageSubtitle
        label.text = String.Icon.chevronRight
        label.textColor = .white
        return label
    }()
}

extension PokedexTableViewCell: ViewCode {
    func buildViewHierarchy() {
        contentView.addSubview(roundedView)
        roundedView.addSubview(nameLabel)
        roundedView.addSubview(pokemonImageView)
        roundedView.addSubview(chevronLabel)
    }
    
    func setupConstraints() {
        roundedView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(8)
        }
        pokemonImageView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(8)
            make.left.equalToSuperview().inset(16)
            make.width.height.equalTo(88)
        }
        nameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(pokemonImageView.snp.centerY)
            make.left.equalTo(pokemonImageView.snp.right).offset(-16)
            make.right.equalTo(chevronLabel.snp.left).offset(32)
        }
        chevronLabel.snp.makeConstraints { make in
            make.centerY.equalTo(pokemonImageView.snp.centerY)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    func additionalConfigurations() {
        selectionStyle = .none
        nameLabel.layer.cornerRadius = 10
        nameLabel.layer.masksToBounds = true
        pokemonImageView.layer.cornerRadius = 44
    }
}
