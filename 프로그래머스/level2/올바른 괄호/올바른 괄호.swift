import Foundation

func solution(_ s:String) -> Bool {
    if s.first == ")" && s.last == "(" {
        return false
    }
    
    var matchBraket: Int = 0
    var error: Bool = true
    
    for char in s {
        if char == "(" {
             matchBraket += 1
        } else {
            matchBraket -= 1
        }
        
        if matchBraket < 0 {
            error = false
        }
    }
    
    return matchBraket == 0 && error == true ? true : false
}
