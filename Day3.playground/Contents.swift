import Cocoa

var cities: [String] = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.reversed()) // ReversedCollection<Array<String>>(_base: ["London", "Tokyo", "Rome", "Budapest"])

print(Array(cities.reversed())) // ["Budapest", "Rome", "Tokyo", "London"]
print(cities.reversed() as [String]) // ["Budapest", "Rome", "Tokyo", "London"]

var actors = Set<String>()
actors.insert("송혜교")
actors.insert("전지현")
actors.insert("강동원")
print(actors)

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = .tuesday
