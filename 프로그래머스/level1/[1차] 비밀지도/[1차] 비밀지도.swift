import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
  
  let wall1 = arr1.map { Int(String($0, radix: 2))! }
  let wall2 = arr2.map { Int(String($0, radix: 2))! }
  
  for index in 0...n-1 {
    var binary: String = String(wall1[index] + wall2[index])
    
    if binary.count != n {
      let moreZero = n - binary.count
      for _ in 1...moreZero {
        binary.insert("0", at: binary.startIndex)
      }
    }
    
    let wall = binary.map { return $0 == "0" ? " " : "#" }
                     .joined()

    answer.append(wall)
    
  }
    return answer
}
