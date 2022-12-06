import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var ans = 0
    
    for i in ingredient {
      stack.append(i)
        
      if stack.count < 4 { continue }
        
      let count = stack.count
        
      if Array(stack[count-4..<count]) == [1, 2, 3, 1] {
            stack = Array(stack[0..<count-4])
            ans += 1
        }
        
    }
    return ans
}
