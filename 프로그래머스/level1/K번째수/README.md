# [Level 1] K번째 수

![문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/42748)

## 풀이 
우선 받은 배열은 시작 인덱스, 끝 인덱스, 고를 인덱스로 나눠서 저장한다.
배열을 인덱스를 통해 재가공 한 후 정렬하고 알맞은 위치를 찾고
result 에 넣는다. 

인덱스는 0으로 시작하니 첫번째 수 는 index - 1 을 해서 찾아야 한다는 것을 까먹지 말자. 
