import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    } else {
        var result = arr
        result.remove(at:result.index(of:arr.min()!)!)
        return result
    }
}
