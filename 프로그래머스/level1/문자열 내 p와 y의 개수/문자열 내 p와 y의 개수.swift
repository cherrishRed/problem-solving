import Foundation

func solution(_ s:String) -> Bool {
  let uppercaseString = s.uppercased()
  var pCount: Int = 0
  var yCount: Int = 0
  
  uppercaseString.map { char in
    if char == "P" {
      pCount += 1
    } else if char == "Y" {
      yCount += 1
    }
  }
  return pCount == yCount
}
