import Cocoa

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}


func pythagoras(a: Double, b: Double) -> Double {
    return sqrt((a * a) + (b * b))
}
let c = pythagoras(a: 3, b: 4)
print(c)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName

//print("Name: \(firstName) \(lastName)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

let (first, _) = getUser()
print("Name: \(first)")
