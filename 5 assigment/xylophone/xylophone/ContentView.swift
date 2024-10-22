import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer?

    // Массив цветов для кнопок
    let buttonColors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]

    // Массив названий звуковых файлов
    let soundFiles: [String] = ["C", "D", "E", "F", "G", "A", "B"]

    var body: some View {
        VStack(spacing: 0) {
            // Создание кнопок в цикле
            ForEach(0..<7) { index in
                Button(action: {
                    playSound(soundFile: soundFiles[index])  // Воспроизведение звука по индексу
                }) {
                    Rectangle()
                        .fill(buttonColors[index])  //Присваиваем цвет кнопке
                        .frame(height: 100.0)
                }
            }
        }
    }


    func playSound(soundFile: String) {
        if let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav", subdirectory: "Sounds") {  // Папка "Sounds"
            print("Sound file found at: \(soundURL)")  // Выводим путь к файлу для проверки
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch {
                print("Ошибка воспроизведения звука: \(error.localizedDescription)")
            }
        }
    }
}

#Preview {
    ContentView()
}
