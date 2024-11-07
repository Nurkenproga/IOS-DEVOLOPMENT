import UIKit

class DetailViewController: UIViewController {
    
    var game: Game
    
    // Инициализатор для передачи данных игры
    init(game: Game) {
        self.game = game
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // UI элементы
    var gameImageView: UIImageView!
    var gameTitleLabel: UILabel!
    var gameDeveloperLabel: UILabel!
    var gameGenreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        displayGameDetails()
    }
    
    // Настроим UI элементы
    func setupUI() {
        gameImageView = UIImageView()
        gameTitleLabel = UILabel()
        gameDeveloperLabel = UILabel()
        gameGenreLabel = UILabel()
        
        gameImageView.translatesAutoresizingMaskIntoConstraints = false
        gameTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        gameDeveloperLabel.translatesAutoresizingMaskIntoConstraints = false
        gameGenreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(gameImageView)
        view.addSubview(gameTitleLabel)
        view.addSubview(gameDeveloperLabel)
        view.addSubview(gameGenreLabel)
        
        setConstraints()
    }
    
    // Установим ограничения для UI элементов
    func setConstraints() {
        NSLayoutConstraint.activate([
            gameImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            gameImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameImageView.heightAnchor.constraint(equalToConstant: 200),
            gameImageView.widthAnchor.constraint(equalToConstant: 200),
            
            gameTitleLabel.topAnchor.constraint(equalTo: gameImageView.bottomAnchor, constant: 20),
            gameTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            gameDeveloperLabel.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 10),
            gameDeveloperLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            gameGenreLabel.topAnchor.constraint(equalTo: gameDeveloperLabel.bottomAnchor, constant: 10),
            gameGenreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // Отображение данных игры
    func displayGameDetails() {
        gameImageView.image = game.image
        gameTitleLabel.text = game.title
        gameDeveloperLabel.text = "Разработчик: \(game.developer)"
        gameGenreLabel.text = "Жанр: \(game.genre)"
    }
}
