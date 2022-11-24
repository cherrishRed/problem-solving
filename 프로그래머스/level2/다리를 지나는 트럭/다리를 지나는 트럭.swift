import Foundation

func solution(_ bridge_length: Int,
              _ weight: Int,
              _ truck_weights: [Int]) -> Int {
  
  var heap = Array(repeating: 0, count: bridge_length)
  var time: Int = 0
  var sum: Int = 0
  
  for index in 0...truck_weights.count-1 {
    let car = truck_weights[index]
    
    let first = heap.removeFirst()
    sum -= first
    
    while sum+car > weight {
      let first = heap.removeFirst()
      sum -= first
      heap.append(0)
      time += 1
    }
    
    heap.append(car)
    sum += car
    time += 1
  }
  
  time += bridge_length

  return time
}
