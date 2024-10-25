import SwiftUI

struct GameListRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> GameList {
        return GameList()
    }

    func updateUIViewController(_ uiViewController: GameList, context: Context) {
        // Здесь можно добавить логику обновления, если нужно
    }
}
