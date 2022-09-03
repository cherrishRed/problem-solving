import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var hashTable: [String: Int] = [:]
    
    for i in 0..<clothes.count {
        let key = clothes[i][1]
        
        if hashTable[key] == nil {
            hashTable[key] = 1
        } else {
            let previousValue = hashTable[key]!
            hashTable[key] = previousValue + 1
        }
    }
    
    var result = hashTable
                    .values
                    .map { return $0 + 1 }
                    .reduce(1, { pre, cur in
                            print("pre: \(pre)")
                            print("cur: \(cur)")
                            return pre * cur
                                })
    return result - 1
}
