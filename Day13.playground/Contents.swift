import Cocoa

protocol Vehicle {
  func estimateTime(for distance: Int) -> Int
  func travel(distance: Int)
}

struct Car: Vehicle {
  func estimateTime(for distance: Int) -> Int {
    distance / 50
  }
  
  func travel(distance: Int) {
    print("I'm driving \(distance)km.")
  }
  
  func openSunroof() {
    print("It's a nice day!")
  }
}

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

// # Checkpoint 8
protocol Building {
    var rooms: Int { get }
    var price: Int { get }
    var agent: String { get }
    var type: String { get }

    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("\(agent) is showing a \(rooms) room \(type) property that costs \(price).")
        //by adding the print summary to the extension, it avoids having to write separate functions for each struct
    }
}


struct House: Building {
    var rooms: Int
    var price: Int
    var agent: String
    var type: String = "residential"
}


struct Office: Building {
    var rooms: Int
    var price: Int
    var agent: String
    var type: String = "commercial"
}

let house = House(rooms: 6, price: 150_000, agent: "Jane")
house.salesSummary()

let office = Office(rooms: 2, price: 50_000, agent: "John")
office.salesSummary()

let extHoues = House(rooms: 5, price: 12_000_000, agent: "Mike")
extHoues.salesSummary()
