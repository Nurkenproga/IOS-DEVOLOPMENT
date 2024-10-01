import Foundation

func FromCelsiusToFahrenheit(_ number: Float) -> Float {
    return number * 9 / 5 + 32
}

func FromCelsiusToKelvin(_ number: Float) -> Float {
    return number + 273.15
}

func FromFahrenheitToCelsius(_ number: Float) -> Float {
    return number - 32 * 5 / 9
}
func FromFahrenheitToKelvin(_ number: Float) -> Float {
    return (number - 32) * 5 / 9 + 273.15
}
func FromKelvinToCelsius(_ number: Float) -> Float {
    return number - 273.15
}
func FromKelvinToFahrenheit(_ number: Float) -> Float {
    return (number - 273.15) * 9 / 5 + 32
}

let input = readLine() ?? ""
let inputs = input.split(separator: " ")
let number = Float(inputs[0]) ?? 0
let TemperatureType = String(inputs[1])

if TemperatureType == "C" {
    print("Fahrenheit: \(FromCelsiusToFahrenheit(number))")
    print("Kelvin: \(FromCelsiusToKelvin(number))")
} else if TemperatureType == "F"{
    print("Celsius: \(FromFahrenheitToCelsius(number))")
    print("Kelvin: \(FromFahrenheitToKelvin(number))")
} else if TemperatureType == "K" {
    print("Celsius: \(FromKelvinToCelsius(number))")
    print("Fahrenheit: \(FromKelvinToFahrenheit(number))")
}