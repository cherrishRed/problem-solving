import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
  let result = strings.sorted { first, second in
    let firstIndex = first.index(first.startIndex, offsetBy: n)
    let secondIndex = first.index(second.startIndex, offsetBy: n)
    
    if first[firstIndex] == second[secondIndex] {
      return first < second
    } else {
      return first[firstIndex] < second[secondIndex]
    }
  }
    return result
}
