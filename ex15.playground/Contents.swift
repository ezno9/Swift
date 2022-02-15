import UIKit

// 클로저의 변형(유연성)

// 일반함수의 매개변수로 클로저 변수를 받는다
func calc(a:Int, b:Int, method:(Int, Int)->Int) -> Int {
    return method(a,b)
}

// 실행시 코드블럭(클로저)를 바로 선언하는 방법(자바: 익명함수)
var result = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) -> Int in
    return a + b
})


// 반환형 생략 가능 : 타입추정으로 인해 생략 가능
result = calc(a: 20, b: 30, method: {
    (a:Int, b:Int) /* -> Int */ in
    return a + b
})


// 매개변수도 생략 가능
result = calc(a: 20, b: 30, method: {
    /* (a:Int, b:Int) in */
    return $0 + $1 // $0 = 첫번째 매개변수, $1 = 두번째 매개변수
})

// return 생략 가능
result = calc(a: 20, b: 30, method: {
    /* return */ $0 + $1 // 코드의 마지막 줄은 반환갑으로 생각함.
})


// 후행 클로저(Trailing Closure) : 함수를 소괄호로 미리 닫고, 클로저를 마지막 매개변수로 선언
result = calc(a: 23, b: 32) {
    (a:Int, b:Int) -> Int in
    return a + b
}


// 후행 클로저에서 반환형 생략 가능
result = calc(a: 11, b: 22) {
    (a:Int, b:Int) /* -> Int */ in
    return a + b
}


// 후행 클로저에서 매개변수 생략 가능
result = calc(a: 25, b: 33) {
    /* (a:Int, b:Int) in */
    return $0 + $1 // $0 = 첫번째 매개변수, $1 = 두번째 매개변수
}


// 후행 클로저에서 return 생략 가능
result = calc(a: 123, b: 321) {
    /* return */ $0 + $1 // 코드의 마지막 줄은 반환갑으로 생각함.
}
