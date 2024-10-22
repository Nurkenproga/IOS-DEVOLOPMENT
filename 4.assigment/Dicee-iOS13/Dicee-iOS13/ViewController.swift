import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!
    
    let diceImages = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func RollButtonPressed(_ sender: UIButton) {
        let randomIndex1 = Int.random(in: 0...5)
        let randomIndex2 = Int.random(in: 0...5)
        
        DiceImageView1.image = diceImages[randomIndex1]
        DiceImageView2.image = diceImages[randomIndex2]
    }
}

