import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10 // Score is now 10


class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work() // I'm writing code for 8 hours.
joseph.work() // I'm going to meetings for 10 hours.

let novall = Developer(hours: 8)
novall.printSummary() // I'm a developer who will sometimes work 8 hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// # Checkpoint 7
class Animal {
    let legs: Int
    
    init (legs: Int) {
        self.legs = max(legs, 0)
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    public func speak() {
        print("월!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init (isTame isTameFromInit: Bool) {
        isTame = isTameFromInit
        super.init(legs: 4)
    }
    
    public func speak() {
        print("야옹?")
    }
}

class Corgi: Dog {
    override func speak() {
        print ("월월월!")
    }
}

class Poodle: Dog {
    override func speak() {
        print ("멍멍!")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
    
    override func speak() {
        print("야~옹")
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: false)
    }
    
    override func speak() {
        print("어흥~~")
    }
}
