import Foundation

func solution(_ s:String) -> String {
    var result: [Character] = Array(s)
    return String(result.sorted(by: >))
}
