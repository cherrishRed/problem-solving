# [Level 1] 두 개 뽑아서 더하기

![문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/68644)

## 풀이

처음 푼 로직은
```swift
func solution(_ numbers:[Int]) -> [Int] {
  let count = numbers.count - 1
  var result: [Int] = []
  
  for (index, number) in numbers.enumerated() {
      for i in count {
        if i != index {
          let n = number + numbers[i]
          if result.contains(n) == false {
            result.append(n)
          }
        }
      }
  }
  return result.sorted(by: <)
}
```
이랬다. 

모든 인덱스에 있는 숫자를 다른 숫자와 더한 후 result 라는 배열에 넣고 
오름차순으로 정렬하는 로직이였다. 

이 풀이는 시간이 너무 오래 걸려서 통과하지 못했다. 

조금 더 생각해보니 이 로직은 0번 인덱스가 1번 인덱스와도 더하고 1번 인덱스가 0번 인덱스 와도 더하니
해서 불필요한 계산을 하고 있었다. 

그래서 for 문 안의 인덱스와 이후의 인덱스의 있는 숫자들과만 더하도록 

```swift
func solution(_ numbers:[Int]) -> [Int] {
  let count = numbers.count - 1
  var result: [Int] = []
  
  for (index, number) in numbers.enumerated() {
    if index != count {
      let nextIndex = index + 1
      for i in nextIndex...count {
        let n = number + numbers[i]
        if result.contains(n) == false {
          result.append(n)
        }
      }
    }
  }
  return result.sorted(by: <)
}
```swift

이렇게 로직을 변경하였더니 통과했다!
