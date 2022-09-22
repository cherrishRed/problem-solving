import Foundation

func solution(_ sizes:[[Int]]) -> Int {
  var width: Int = 0
  var height: Int = 0
  
  for card in sizes {
    let big = max(card[0], card[1])
    let small = min(card[0], card[1])
    
    width = max(width, big)
    height = max(height, small)
  }

    return width * height
}
