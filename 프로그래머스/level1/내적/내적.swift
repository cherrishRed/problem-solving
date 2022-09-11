import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var c: [Int] = []

    for index in 0..<a.count {
        let result = a[index] * b[index]
        c.append(result)
    }
  
    return c.reduce(0) { $0 + $1 }
}
