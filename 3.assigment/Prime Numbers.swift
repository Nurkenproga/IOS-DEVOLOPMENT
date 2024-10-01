import Foundation

func IsPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for x in 1...100 {
    if IsPrime(x) {
        print("Is Prime \(x)")
    }
}