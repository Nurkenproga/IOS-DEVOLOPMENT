var studentNames = ["Artyom", "Adema", "Madi", "Aibek", "kent"]

var studentScores = [
    "Artyom": 90,
    "Adema": 85,
    "Madi": 95,
    "Aibek": 88,
    "kent": 92
]

var totalScore = 0
for score in studentScores.values {
    totalScore += score
}
var averageScore = totalScore / studentScores.count

var highestScore = 0
var lowestScore = Int.max
for score in studentScores.values {
    if score > highestScore {
        highestScore = score
    }
    if score < lowestScore {
        lowestScore = score
    }
}

for (name, score) in studentScores {
    var status = ""
    if score > averageScore {
        status = "above"
    } else if score < averageScore {
        status = "below"
    } else {
        status = "equal to"
    }
    print("\(name) scored \(score). This is \(status) the average score.")
}