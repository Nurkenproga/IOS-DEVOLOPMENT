import UIKit

var fruits = ["apple", "banana", "cherry", "date", "elderberry"]
print(fruits[2])

var favorite_numbers = {7, 14, 21}
var favoriteNumbers: Set = [7, 14, 21]
favoriteNumbers.insert(28)
print(favoriteNumbers)

var languages = ["Python": 1991, "Swift": 2014, "Java": 1995]
if let swiftYear = languages["Swift"] {
    print(swiftYear)
}

var colors = ["Red", "Green", "Blue", "Yellow"]
colors[1] = "Purple"
print(colors)


//Medium

let set1: Set = [1, 2, 3, 4]
let set2: Set = [3, 4, 5, 6]
let intersection = set1.intersection(set2)
print(intersection)

var scores = ["Alice": 85, "Bob": 90, "Charlie": 78]
scores["Alice"] = 95
print(scores)

let array1 = ["Apple", "Banana"]
let array2 = ["Cherry", "Date"]
let mergedArray = array1 + array2
print(mergedArray)

//Hard

var countries = ["USA": 331000000, "India": 1380000000]
countries["Japan"] = 126000000
print(countries)

let pets1: Set = ["Cat", "Dog"]
let pets2: Set = ["Dog", "Mouse"]
let unionPets = pets1.union(pets2)
let finalPets = unionPets.subtracting(pets2)
print(finalPets)

var grades = ["Kamila": [90, 85, 92], "Bob": [78, 88, 84]]
var kamilaGrades = grades["Kamila"]![1]
print(kamilaGrades)




