import Foundation

func solution(_ numbers:[Int]) -> String {
    let orderedNumbers = numbers.sorted { (a, b) -> Bool in
      guard let firstOfA = Int(String(a) + String(b)) else { return false }
      guard let firstOfB = Int(String(b) + String(a)) else { return false }
      return firstOfA > firstOfB
    }

  let number: String = orderedNumbers
                    .reduce("", { $0 == "0" ? String($1) : String($0) + String($1) })

  return number
}
