import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for ijk in commands {
        let startIndex = ijk[0] - 1
        let endIndex = ijk[1] - 1
        let pickIndex = ijk[2] - 1
        
        var filteredArray: [Int] = []
        
        for (index, num) in array.enumerated() {
            if index >= startIndex && index <= endIndex {
                filteredArray.append(num)
            }
        }
        
        let sortedArray = filteredArray.sorted()
        print(sortedArray)
        let number = sortedArray[pickIndex]
        result.append(number)
    }
    
    return result
}
