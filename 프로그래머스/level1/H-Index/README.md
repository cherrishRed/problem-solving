# [Level 2] H-Index

![문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/42747)

## 풀이 
먼저 받은 배열을 오름차순으로 정렬했다. 
그리고 배열을 돌면서, value 와 count 들을 계산했다. 
처음엔 value 와 count 가 같거나 count 가 더 큰 값이 있는 경우 정답으로 처리했는데, 문제가 있었다. 

[6, 5, 5, 5, 3, 2, 1, 0] 

이러한 배열을 넣었을 경우에는 답이 4인데 value 에 4라는 값이 존재하지 않는다. 

이럴 경우를 대비해서 value 가 count 보다 클 경우 그 전의 value 에서 현재의 value 사이의 갭들을 검사하는 로직을 추가해 주었더니 문제를 해결할 수 있었다.

### 다른 사람의 풀이

```swift
func solution(_ citations:[Int]) -> Int {
    let citations = citations.sorted() { $0 > $1 }
    print(citations)
    var result = 0

    for i in 0..<citations.count {
      print("\(i + 1) <= \(citations[i])")
        if i + 1 <= citations[i] {
            result = i + 1
          print("result: \(result)")
        } else {
            break
        }
    }

    return result
}
```
다른 분의 풀이 중 오름차순으로 정렬해 값을 찾아간 나와는 다른게 내림차순으로 문제를 푼 분이 있었는데 
오히려 예외를 처리해 줄 필요도 없고 코드도 더 깔끔한 것 같았다. 
코테를 계속 풀어보면서 센스를 좀 더 익혀야 할 것 같다. 
