import Cocoa

func greetUser() {
    print("Hi there!")
}

greetUser() // Hi there!

var greetCopy = greetUser // function copy
greetCopy() // Hi there!

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi, \(name)!"
}

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989) // 함수를 직접 호출 할 때만 외부 매개변수 사용한다.
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// type 1
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String)  -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

// type 2 : 후행 클로저
let captinFirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// type 3 : 약식 매개변수 사용
let captinFirstTeam3 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

// #  Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let arrFilter = luckyNumbers.filter { $0 % 2 != 0 }.sorted()

for num in arrFilter {
    print("\(num) is a lucky number")
}
