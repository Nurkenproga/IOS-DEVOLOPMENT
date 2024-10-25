import UIKit

class GameCell: UITableViewCell {
    
    var gameImageView = UIImageView()
    var gameTitleLabel = UILabel()
    var gameDevoloperLabel = UILabel()
    var gameGenreLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(gameImageView)
        addSubview(gameTitleLabel)
        addSubview(gameDevoloperLabel)
        addSubview(gameGenreLabel)
        
        configureImageView()
        configureTitleLabel()
        configureDevoloperLabel()
        configureGenreLabel()
        
        setImageConstraints()
        setTitleLabelConstraints()
        setDevoloperLabelConstraints()
        setGenreLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(game: Game) {
        gameImageView.image = game.image
        gameTitleLabel.text = game.title
        gameDevoloperLabel.text = "Разработчик: \(game.developer)"
        gameGenreLabel.text = "Жанр: \(game.genre)"
    }
    
    // Настройки изображения
    func configureImageView() {
        gameImageView.layer.cornerRadius = 10
        gameImageView.clipsToBounds = true
        gameImageView.contentMode = .scaleAspectFit  // Масштабируем изображение

    }
    
    // Настройки заголовка
    func configureTitleLabel() {
        gameTitleLabel.numberOfLines = 0
        gameTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    // Настройки разработчика
    func configureDevoloperLabel() {
        gameDevoloperLabel.font = UIFont.systemFont(ofSize: 14)
        gameDevoloperLabel.textColor = .darkGray
    }
    
    // Настройки жанра
    func configureGenreLabel() {
        gameGenreLabel.font = UIFont.systemFont(ofSize: 14)
        gameGenreLabel.textColor = .lightGray
    }
    
    // Ограничения для изображения
    func setImageConstraints() {
        gameImageView.translatesAutoresizingMaskIntoConstraints = false
        gameImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        gameImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        gameImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true  // Высота для вертикальных изображений
        gameImageView.widthAnchor.constraint(equalTo: gameImageView.heightAnchor, multiplier: 2/3).isActive = true  // Соотношение сторон 2:3
    }
    
    // Ограничения для заголовка
    func setTitleLabelConstraints() {
        gameTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        gameTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        gameTitleLabel.leadingAnchor.constraint(equalTo: gameImageView.trailingAnchor, constant: 20).isActive = true
        gameTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    // Ограничения для разработчика
    func setDevoloperLabelConstraints() {
        gameDevoloperLabel.translatesAutoresizingMaskIntoConstraints = false
        gameDevoloperLabel.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 5).isActive = true
        gameDevoloperLabel.leadingAnchor.constraint(equalTo: gameImageView.trailingAnchor, constant: 20).isActive = true
        gameDevoloperLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    // Ограничения для жанра
    func setGenreLabelConstraints() {
        gameGenreLabel.translatesAutoresizingMaskIntoConstraints = false
        gameGenreLabel.topAnchor.constraint(equalTo: gameDevoloperLabel.bottomAnchor, constant: 5).isActive = true
        gameGenreLabel.leadingAnchor.constraint(equalTo: gameImageView.trailingAnchor, constant: 20).isActive = true
        gameGenreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        gameGenreLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}

