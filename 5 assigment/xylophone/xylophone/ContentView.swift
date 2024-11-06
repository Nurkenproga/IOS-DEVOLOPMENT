import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer? 


    let buttonColors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]

    
    let soundFiles: [String] = ["C", "D", "E", "F", "G", "A", "B"]

    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<7) { index in
                Button(action: {
                    playSound(soundFile: soundFiles[index])  // Воспроизведение звука по индексу
                }) {
                    Rectangle()
                        .fill(buttonColors[index])
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
                audioPlayer?.play()
            } catch {
                print("Error loading sound file: \(error)")
            }
        } else {
            print("Sound file not found: \(soundFile).wav")
        }
    }
}

#Preview {
    ContentView()
}
