import Foundation

func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text.lowercased().replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)
    return cleanedText == String(cleanedText.reversed())
}

let text = "aba"
let ans = isPalindrome(text)
print(ans)