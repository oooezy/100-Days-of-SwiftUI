import Cocoa

var greeting = "Hello, playground"

greeting.hasPrefix("Hello")
greeting.hasSuffix("groud")

var million: Int = 100_000_000

let number = 120
print(number.isMultiple(of: 3))

let number: Double = 0.1 + 0.2
print(number) // error!

/*
 부동 소수점 숫자가 복잡한 이유는 컴퓨터가 복잡한 숫자를 저장하기 위해 이진법을 사용하려고 하기 때문이다.
 예를들어 10을 3으로 나누면 0.3333..이 되는 것을 알지만, 이진수로 저장할 수 없으므로
 시스템은 매우 가까운 근사값을 생성하도록 설계되어 있다.
 이는 매우 효율적이고 오류가 매우 작아 일반적으로 관련이 없지만,
 Swift에서는 우리가 우연히 Int와 Double을 같이 사용하지 못하도록 하고 있다.
 */

let a = 1
let b = 0.2
// let c = a + b // 다른 유형의 데이터 혼합 불가
let c = Double(a) + b
print(c)

var rating = 5.0
rating *= 2
