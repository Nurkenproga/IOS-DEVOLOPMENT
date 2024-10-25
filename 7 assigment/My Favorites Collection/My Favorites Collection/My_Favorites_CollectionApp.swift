import SwiftUI

@main
struct My_Favorites_CollectionApp: App {
    var body: some Scene {
        WindowGroup {
            GameListRepresentable() // Используем GameList вместо ContentView
        }
    }
}
