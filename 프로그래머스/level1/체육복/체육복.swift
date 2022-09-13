import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var clothes: [Int] = Array(repeating: 0, count: n)
    
    for i in lost { clothes[i-1] -= 1 }
    for i in reserve { clothes[i-1] += 1 }
    
    for (index, clothe) in clothes.enumerated() {
      if clothe == -1 {
        if index > 0 && clothes[index-1] == 1 {
      clothes[index] += 1
      clothes[index-1] -= 1
        } else if index < clothes.count - 1 && clothes[index+1] == 1 {
      clothes[index] += 1
      clothes[index+1] -= 1
        }
      }
    }
    return clothes.filter { $0 >= 0 }.count
}
