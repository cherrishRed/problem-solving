import Foundation

func solution(_ s:String) -> String {
    var result = ""
    
    if s.count % 2 == 0 {
        var halfIndex = s.count / 2
        for (index, char) in s.enumerated() {
            if index == halfIndex-1 || index == halfIndex {
                result.append(char)
            }
        }
    } else {
        var halfIndex = s.count / 2
                for (index, char) in s.enumerated() {
            if index == halfIndex {
                result.append(char)
            }
        }
    }
    return result
}

// 간결하게 바꾸면 아래 로직이 더 나을 것 같다.

func solution(_ s:String) -> String {
    var half = s.count / 2
    
    if s.count % 2 == 0 {
        return String(Array(s)[half-1...half])
    } else {
        return String(Array(s)[half])
    }
}
