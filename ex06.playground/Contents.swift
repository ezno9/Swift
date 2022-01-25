import UIKit

// 스위프트 언어의 중요한 특징
// 옵셔널(Optional) - null 체크, Null Exception 발생빈도를 줄여보자.

// 자바에서 널체크
// if( myObj = null ) {
//  return;
// }

var myNum1: Int = 10 // 실제값으로 10초기화했기 때문에 nil이 아님.
var myNullable: Int? = nil // 명시적으로 Null일수도 있음을 선언해야 함. <- 옵셔널 기능
print( myNum1 )
print( myNullable )

// 옵셔널 변수를 안전하게 사용하는 방법 : Null Exception을 피하는 방법
// 1. 옵셔널 바인딩 - if let 구문
// 2. 가드 문장 - guard let, guard else 구문

myNullable = 20
// 옵셔널 바인딩 Optional Binding
if let newInt = myNullable {
    // null이 아님
    print("널이 아닙니다.")
    print( newInt )
} else {
    // null
    print("널 입니다.")
}

// 강제 언래핑 forced unwrapping
// nil임을 감수하고(널이 아님을 확신하고) 값을 빼오는 것을 의미
// ! 연산자 : 실제값을 빼오는 연산자
print(myNullable!)

// 연습문제
// 옵셔널 문제열 변수 myStr 선언하고, "Hello"를 초기값으로 할당하고
// 옵셔널 바인딩(if let)을 활용하여, myStr의 값을 출력하시오.
// 널이라면, "nil입니다."
// 아니라면, "nil이 아닙니다."
var myStr : String? = "Hello"
if let newStr = myStr {
    print("nil이 아닙니다. \(newStr)")
} else {
    print("nil입니다.")
}


