import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var afterDays: [Int] = []
    var result: [Int] = []
    
    for index in 0..<progresses.count {
        let remainWork = 100 - progresses[index]
        var day = remainWork / speeds[index]
        if remainWork % speeds[index] != 0 {
            day += 1
        }
        afterDays.append(day)
    }
    
    var together: Int = 1

    var first = afterDays.removeFirst()
    var secound = afterDays.removeFirst()
    print(first)
    print(secound)
    
    while afterDays.isEmpty == false {
        if first >= secound {
            together += 1
            print(together)
            secound = afterDays.removeFirst()
            print(first, secound)
        } else {
            result.append(together)
            together = 1
            print(result)
            first = secound
            if afterDays.count == 0 {
                secound = 0
            } else {
                secound = afterDays.removeFirst()
            }
        }
    }
    
    if first >= secound {
        together += 1
        result.append(together)
    } else {
        result.append(together)
        result.append(1)
    }
    
    return result
}
