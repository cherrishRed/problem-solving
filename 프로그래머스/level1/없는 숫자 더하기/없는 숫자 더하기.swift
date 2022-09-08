import Foundation

func solution(_ numbers:[Int]) -> Int {
    var fullNumbers: Set<Int> = []
    let numbers = Set(numbers)
    
    for number in 1...9 {
        fullNumbers.insert(number)
    }
    
    let resultNumbers = fullNumbers.subtracting(numbers)
    
    return resultNumbers.reduce(0) { $0 + $1 }
}
