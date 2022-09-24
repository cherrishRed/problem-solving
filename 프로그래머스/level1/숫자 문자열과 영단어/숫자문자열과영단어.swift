import Foundation

func solution(_ s:String) -> Int {
  let numbers = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  
  var result = s
  
  for (index, number) in numbers.enumerated() {
    if result.contains(number) {
      result = result.replacingOccurrences(of: number, with: String(index))
    }
  }

    return Int(result)!
}
