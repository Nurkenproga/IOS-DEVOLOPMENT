import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer?  // Используем @State для хранения изменяемого состояния

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
                        .fill(buttonColors[index])  // Присваиваем цвет кнопке
                        .frame(height: 100.0)
                }
            }
        }
    }

    func playSound(soundFile: String) {
        if let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav", subdirectory: "Sounds") {
            print("Sound file found at: \(soundURL)")  // Выводим путь к файлу для проверки
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()  // Воспроизведение звука
            } catch {
                print("Error loading sound file: \(error)")  // Обработка ошибок
            }
        } else {
            print("Sound file not found: \(soundFile).wav")
        }
    }
}

#Preview {
    ContentView()
}
