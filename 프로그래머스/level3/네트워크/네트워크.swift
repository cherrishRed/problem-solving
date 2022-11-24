import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
  // 첫번째 컴퓨터가 들어가 있는 linked 라는 배열을 만든다.
  var linked = [[0]]
  
  func DFS(computer: Int) {
    // 이미 컴퓨터가 linked 에 있는지 확인한다.
    // 없다면, linked에 새로운 배열을 추가한다.
    if isContain(computer) == false {
      linked.append([computer])
    }
    
    // 배열을 돌면서, 지금 컴퓨터가 연결되어 있는 모든 컴퓨터를 검사한다.
    for j in 0...n-1 {
      if computers[computer][j] == 1 && computer != j {
        if linked.last?.contains(j) == false {
          var last = linked.removeLast()
          last.append(j)
          linked.append(last)
          DFS(computer: j)
        }
      }
    }
  }
  
  // linked 라는 이중 배열에 number 값이 들어가 있는지 확인하는 메서드
  func isContain(_ number: Int) -> Bool {
    return linked.map { array -> Bool in
      return array.contains(number)
    }.contains(true)
  }
  
  // 모든 컴퓨터가 DFS 메서드를 실행하게 한다.
  for i in 0...n-1 {
    DFS(computer: i)
  }

  return linked.count
}
