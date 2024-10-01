import Foundation

func add(_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtract(_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multiply(_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func divide(_ num1: Double, _ num2: Double) -> Double? {
    if num2 == 0 {
        print("Error: Division by zero is not allowed.")
        return nil
    }
    return num1 / num2
}

func calculate() {
    var continueCalculating = true
    
    repeat {
        print("Enter the first number:")
        guard let num1 = Double(readLine() ?? "") else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        print("Enter the second number:")
        guard let num2 = Double(readLine() ?? "") else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        print("Choose an operation: (+) Addition, (-) Subtraction, (*) Multiplication, (/) Division")
        guard let operation = readLine() else {
            print("Invalid input. Please choose a valid operation.")
            continue
        }
        
        var result: Double?
        
        switch operation {
        case "+":
            result = add(num1, num2)
        case "-":
            result = subtract(num1, num2)
        case "*":
            result = multiply(num1, num2)
        case "/":
            result = divide(num1, num2)
        default:
            print("Invalid operation. Please choose a valid operation.")
        }
        
        if let result = result {
            print("Result: \(result)")
        }
        
        print("Do you want to perform another calculation? (y/n)")
        let choice = readLine()
        
        if choice?.lowercased() != "y" {
            continueCalculating = false
        }
        
    } while continueCalculating
}

calculate()