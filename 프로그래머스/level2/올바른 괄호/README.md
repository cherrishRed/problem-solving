# [Level2] 올바른 괄호 

![문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/12909)

## 풀이 
받은 string 의 first 가 "(" 인지 last 가 ")" 인지를 검사한다. 
아니라면 false 를 바로 밷는다. 

이후에 for 문을 이용해서 string 의 character 값을 하나씩 받아서 짝의 개수를 확인한다. 

처음에 틀렸던 이유는 개수만 확인하고 

()))((()

이런 인풋을 통과하지 못했다. 

개수 확인이 아니라 증가 감소를 통해서 짝의 개수를 측정하고 음수가 나올 case 에도 false 를 뱃도록 수정하였다.
