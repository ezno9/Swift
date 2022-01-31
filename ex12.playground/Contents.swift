import UIKit

// 함수 function
// 함수의 용도
// 1. 코드를 기능별로 분리(복잡한 코드를 간결하게)
// 2. 코드 블럭에 이름을 붙일 수 있다
// 3. 코드를 재사용할 수 있다. 코드 중복을 피할 수 있다.


// func 함수이름( 매개변수이름: 타입 ) -> 반환형타입 {
//      수행문...
// }


func myFunc() {
    print("myFunc() 호출")
}
myFunc()


// 함수의 4가지 패턴
// 1. 매개변수 없고, 반환형 없음
func myFunc1() -> Void { // Void 생략가능
    print("myFunc1() 호출")
}
myFunc1()

// 2. 매개변수 있고, 반환형 없음
func myFunc2( name:String ){
    print("myFunc2() 호출 : " + name)
}
myFunc2(name: "이진호") // 매개변수 이름과 값을 동시에 넣어줌.

// 3. 매개변수 없고, 반환형 있음
func myFunc3() -> Int {
    print("myFunc3() 호출")
    return 20
}
let result = myFunc3()


// 4. 매개변수 있고, 반환형 있음
func myFunc4(name:String) -> String {
    print("myFunc4() 호출")
    return name + "반환됨"
}
myFunc4(name: "이진주")


// 함수의 고급 문법
// 매개변수를 여러개 넣을 수 있음
func printMyName(name1:String, name2:String) {
    print("name1:\(name1) name2:\(name2)")
}
printMyName(name1: "이진호", name2: "이진주")


// 매개변수의 기본값을 넣을 수 있음
func printMyName2(name1: String, name2:String="춘향이") {
    print("name1:\(name1) name2:\(name2)")
}
printMyName2(name1: "이진상")
printMyName2(name1: "이진사", name2: "이호호")


// 호출시 매개변수 이름 생략 가능
func printMyName3(_ name1:String, _ name2:String) {
    print("name1:\(name1) name2:\(name2)")
}
printMyName3("이사사", "이킬킬")


// 매개변수이름의 별명(레이블)을 줄 수 있음
func printMyName4(hero name1: String, actor name2: String) {
    print("name1:\(name1) name2:\(name2)")
}
printMyName4(hero: "캬캬캬", actor: "쿄쿄쿄")


// 가변 매개변수 : 매개변수를 배열로 입력할 수 있음
func printMyName5(name1:String, name2:String...){
    print("name1:\(name1) name2:\(name2)")
    for name in name2 {
        print(name)
    }
}
printMyName5(name1: "큐큐큐", name2: "케케케","키키킬","켜켜켜")

