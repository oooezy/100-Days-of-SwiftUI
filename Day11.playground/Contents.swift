import Cocoa

struct BankAccount {
    // var funds = 0 // 구조체 외부에서 값을 변경할 위험이 있음
    private(set) var funds = 0 // 구조체 외부에서 값을 읽을 수 있으나, 변경 불가능
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//account.funds -= 1000 // 외부에서 값을 변경하면 안되는 경우, 구조체 내부에서만 접근할 수 있게 설정해야 한다.

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift") // Taylor Swift joined the school.
print(School.studentCount) // 1

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

// # Checkpoint 6
struct Car {
    let model: String
    let seatCount: Int
    private(set) var currentGear = 1 {
        didSet {
            currentGear = min(max(currentGear, 1), 10)
        }
    }
    
    enum GearDirection {
        case up, down, neutral
    }
    
    public mutating func changeGear(_ direction: GearDirection) {
        switch direction {
        case .down:
            currentGear -= 1
            if currentGear < 1 { currentGear = 1 }
        case .up:
            currentGear += 1
            if currentGear > 10 { currentGear = 10 }
        case .neutral:
            currentGear = 1
        }
        print("The \(model) is in gear: \(currentGear)")
    }
}

