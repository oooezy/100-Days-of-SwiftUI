import Cocoa

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
gameOver.toggle()
print(gameOver)

// # Checkpoint 1
let celsius: Double = 100.0
let fahrenheit: Double = (celsius * 9) / 5 + 32
print("celsius: \(celsius)°C, fahrenheit: \(fahrenheit)°F")
