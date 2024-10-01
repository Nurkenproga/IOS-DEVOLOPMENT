import Foundation

func hasUniqueCharacters(_ text: String) -> Bool {
    var uniqueCharacters = Set<Character>()
    
    for char in text {
        if uniqueCharacters.contains(char) {
            return false
        }
        
        uniqueCharacters.insert(char)
    }
    
    return true
}

let inputText = "Hello, World!"
let hasUnique = hasUniqueCharacters(inputText)
print("The input text '\(inputText)' has unique characters: \(hasUnique)")