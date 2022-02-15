import UIKit

// 튜블 Tuple : 간단 자료형

// 배열과 딕셔너리의 중간형태 : 간단하게 사용하고 버리는 용도
// 형식 : (값1, 값2, 값3)
//       (이름1:값1, 이름2:값2, 이름3: 값3)
// 용도 : 함수의 리턴값(반환값)이 항상 1개인데, 함수의 리턴값을 여러개로 반환할 수 있다.
//          이때, 사용하면 유용


var myTuple = (31, "김예림", 3.14)
myTuple.0
myTuple.1
myTuple.2


// 튜플에 이름을 붙여서 사용하기
let (count, name, value) = myTuple
count
name
value


// 튜플에 이름을 붙여서 사용
let myTuple2 = (count:32, name:"감사용", value:3.13)
myTuple2.name
myTuple2.count
myTuple2.value


// 함수의 반환형으로 튜플을 사용
func myFunc() -> (Int, String, Float) {
    return (39, "캬캬캬", 5.21)
}

let resultTuple = myFunc()
resultTuple.0
resultTuple.1
resultTuple.2


// 튜플을 타입으로 지정 : 타입얼라이스
typealias MyTupleType = (Int, String, Float)
let myTuple3: MyTupleType = (999, "야호", 4.32)
myTuple3

