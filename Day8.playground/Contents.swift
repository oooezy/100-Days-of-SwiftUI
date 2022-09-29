import Cocoa

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count) // 4
characters.removeAll()
print(characters.count) // 0
print(characters.removeAll(keepingCapacity: true)) // 용량을 유지 하면서 데이터 삭제

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ pw: String) throws -> String {
    if pw.count < 5 {
        throw PasswordError.short
    }
    
    if pw == "12345" {
        throw PasswordError.obvious
    }
    
    if pw.count < 8 {
       return "OK"
    } else if pw.count < 10 {
        return "Good!"
    } else {
        return "Excellent"
    }
}

let str = "123%^"

do {
    let result = try checkPassword(str)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error. \(error.localizedDescription)")
}

// # Checkpoint 4
enum rootError: Error {
    case higherLower, noMatch
}

func root(_ num: Int) throws -> String {
    guard num > 1 && num < 10000 else {
        throw rootError.higherLower
    }
    
    for i in 1...100 {
        if i * i == num {
            return "\(i)"
        }
    }

    throw rootError.noMatch
}

do {
    let result = try root(81)
    print("The root is \(result)")
} catch rootError.higherLower {
    print("Out of bounds")
} catch rootError.noMatch {
    print("No Root")
} catch {
    print("help")
}
 
