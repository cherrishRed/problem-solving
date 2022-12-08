import Foundation

func solution(_ X:String, _ Y:String) -> String {
  //공통으로 들어있는 숫자를 알아야 한다.
  //그 숫자들로 가장 크게 할 수 있는 조합을 알아야 한다.
  
  // 공통으로 들어가는 숫자 찾기
  var intersaction: [String] = []
  
  for i in (0..<10) {
      let xCount = X.filter { String($0) == String(i) }.count
      let yCount = Y.filter { String($0) == String(i) }.count
      intersaction += Array(repeating: String(i), count: min(xCount, yCount))
  }
  
  // 겹치는 수가 없을 경우 -1 을 리턴한다.
  if intersaction.isEmpty {
    return "-1"
  }
  
  // 겹치는 수가 0 밖에 없을 경우 0을 리턴 한다.
  if intersaction.filter { $0 == "0" }.count == intersaction.count {
     return "0"
  }
  
  // 위의 두 경우가 아니라면...
  
  var orderedIntersaction = intersaction.sorted(by: >)
  let result = orderedIntersaction.joined()

  return result
}
