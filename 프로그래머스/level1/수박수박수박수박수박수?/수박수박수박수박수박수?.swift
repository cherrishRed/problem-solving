import Foundation

func solution(_ n:Int) -> String {
    var result: String = ""
    
    for number in 0..<n {
        if number % 2 == 0 {
            result += "수"
        } else {
            result += "박"
        }
    }
    return result
}
