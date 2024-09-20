import UIKit

var firstName: String = "Nurken"
var lastName: String = "Atabay"
var age: Int = 19
var birthYear: Int = 2004
var isStudent: Bool = true
var height: Double = 1.75

let currentYear: Int = 2024
age = currentYear - birthYear

var city: String = "Almaty"
var favoriteColor: String = "Blue"

var hobby: String = "BreakDance"
var numberOfHobbies: Int = 4
var favoriteNumber: Int = 2
var isHobbyCreative: Bool = true

var favoriteSport: String = "Dancing"
var favoriteMovie: String = "LaLaLand"


var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I live in \(city) and my height is \(height) meters. I enjoy \(hobby), which is \(isHobbyCreative ? "a creative" : "not a creative") hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). My favorite color is \(favoriteColor) and I love the film \(favoriteMovie)"

print(lifeStory)

var futureGoals: String = "In the future, I want to become a billionair."
lifeStory += " \(futureGoals)"


print(lifeStory)

