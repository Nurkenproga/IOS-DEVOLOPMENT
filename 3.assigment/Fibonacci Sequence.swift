func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else {
        return []
    }
    
    var sequence = [0, 1]
    
    if n > 2 {
        for _ in 2..<n {
            let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
            sequence.append(nextNumber)
        }
    } else if n == 1 {
        sequence = [0]
    }
    
    return sequence
}

let n = 10
let sequence = fibonacci(n)
print(sequence)