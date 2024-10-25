//
//  ViewController.swift
//  Egg timer
//
//  Created by Nurken on 23.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var typeEgg: UILabel!
    
    @IBOutlet weak var timerView: UILabel!
    
    @IBOutlet weak var proggressView: UIProgressView!
    
    let eggTime: [String: Int] = ["soft": 6, "medium" : 200, "hard": 780]
    
    var player: AVAudioPlayer!
    var totalTime: Float = 0
    var secondsPassed: Float = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func startTimer(_ sender: UIButton) {
        timer.invalidate()
        let eggType = sender.currentTitle!
        proggressView.progress = 0.0
        secondsPassed = 0
        typeEgg.text = eggType
        
        totalTime = Float(eggTime[eggType]!)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter(){
        if secondsPassed < totalTime{
            secondsPassed += 1
            let percentageProggress = secondsPassed / totalTime
            var remainingSeconds = Int(totalTime - secondsPassed)
            
            timerView.text = formatTime(remainingSeconds)
            proggressView.progress = percentageProggress
            
        }else{
            playAlarm()
            timer.invalidate()
            typeEgg.text = "eggsDone"
            
        }
        
        func playAlarm(){
            let url = Bundle.main.url(forResource: "alarm", withExtension: "mp3")
            
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
        func formatTime(_ seconds: Int) -> String{
            let minutes = seconds / 60
            let remainingSeconds = seconds % 60
            
            return String(format: "%02d:%02d", minutes, remainingSeconds)
        }
    }
}

