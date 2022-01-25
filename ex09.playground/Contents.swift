import UIKit
import Darwin

// 반복문 for문(60%), while문(30%), repeat while문(10%)

// 반복적인 수행문을 실행할 때
// 자바 : for ( 초기화; 조건문; 증감문 ) 스위프트에서 사라짐.

// 스위프트는 파이썬과 같이 범위연산자를 통해서 for문을 구현.

// 1~10까지 출력
for i:Int in 1...10 {
    print(i)
}

// 0~99까지 출력
for i:Int in 0..<100 {
    print(i)
}

// 연습문제
// 10~35까지 출력
for i:Int in 10...35 {
    print(i)
}

// 100~0까지 출력
for i in (0...100).reversed() {
    print(i)
}

print("")
// 1~100까지 2씩 증가하여 출력
for i in stride(from: 1, to: 100, by: 2) {
    print(i)
}

print("")
// for문으로 배열 순환시키기
var arrayInt = [1,2,3,4,5]
print( arrayInt[0])
print( arrayInt[1])

print("")
for i in arrayInt {
    print( i )
}


// for문으로 딕셔너리(Dictionary)값을 순환
// 딕셔너리 : 자바 Map과 동일한 자료구조 (Key-Value : 키-값)
let persons = ["john":1000, "tom":2000, "lee":3000]
print( persons["john"]! )


for (name, money) in persons {
    print(name)
    print(money)
}


// while문
// 패턴분석
// 초기화
// while (조건문) {
//    수행문
//    증감문
// }
var index:Int = 0
while index < 10 {
    print(index)
    index += 1
}

// 연습문제
// 1~100까지 2의 배수만 출력하시오. for문과 while문
// 2의 배수 조건 i % 2 == 0
for i in 1...100{
    if i % 2 == 0{
        print(i)
    }
}

print("------------------")

var index2:Int = 1
while index2 <= 100 {
    if(index2 % 2 == 0){
        print(index2)
    }
    index2+=1
}


print("ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ")
// 무한반복문 : 특정조건이 될때까지 무한히 반복되는 수행문
var index3 = 0
while true {
    if index3 > 10 {
    break
    }
    print(index3)
    index3 += 1
}


// break문
// continue문 둘 다 사용 가능.

print("=====================")
// 1~100까지 1씩 증가하면서, 2의 배수만 출력하되, 90보다 크면 탈출!
for i in 1...100 {
    if i%2 != 0 {
        continue
    }
    if i > 90 {
        break
    }
    print(i)
}


// repeat-while문 : 자바 do-while문과 동일
// 적어도 한번은 수행 후 조건 비교
// 초기화
// repeat {
//  수행문
//  증감문
// } while 조건문
var index4 = 0
repeat {
    print( index4 )
    index4 += 1
} while index4 < 10
            
print("")
// 이중 for문 : for문 안에 for문이 있는 경우
// 구구단 출력 : 2단~9단, 각 단에는 1~9까지 값을 곱한 값
for i in 2...9 {
    for j in 1...9 {
        print( "\(i) * \(j) = \(i*j)")
    }
    print("")
}


// 레이블 구문 : 탈출지점을 알려줌
// 이중, 삼중 for문에서 break문으로 탈출시, 원하는 루프(for문)을 지정할 수 있다.
OUTER : for i in 1...10 {
    print( i )
    for j in 1...10 {
        if i > 3 {
            break OUTER
        }
        print("\(i), \(j)")
    }
}






