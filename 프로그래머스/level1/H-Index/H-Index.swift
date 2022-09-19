import Foundation

func solution(_ citations:[Int]) -> Int {
  let orderedCitations = citations.sorted(by: <)
  var result: Int = 0

  for (index, value) in orderedCitations.enumerated() {
    let count = orderedCitations.count - index

    if count >= value {
      result = value
    } else {
      var prevalue = 0
      if index != 0 {
        prevalue = orderedCitations[index-1]
      }
      while prevalue <= count {
        result = prevalue
        prevalue += 1
      }
    }
  }
    return result
}
