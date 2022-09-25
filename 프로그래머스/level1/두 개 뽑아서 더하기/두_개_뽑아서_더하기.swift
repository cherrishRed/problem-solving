import Foundation

func solution(_ numbers:[Int]) -> [Int] {
  let count = numbers.count - 1
  var result: [Int] = []
  
  for (index, number) in numbers.enumerated() {
    if index != count {
      let nextIndex = index + 1
      for i in nextIndex...count {
        let n = number + numbers[i]
        if result.contains(n) == false {
          result.append(n)
        }
      }
    }
  }
  return result.sorted(by: <)
}
