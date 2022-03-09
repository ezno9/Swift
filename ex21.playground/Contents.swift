import UIKit

// 형변환 : type casting

let myInt:Int = 10
let myFloat:Float = 3.14
let myString:String = "123"

// Int -> Double
let myDouble:Double = Double( myInt )
// Float -> Int
let myInt2:Int = Int( myFloat )

// Int -> String
let myString2:String = String( myInt )

// String -> Int
let myInt3:Int? = Int( myString )

// 안전하게 사용하기 위해서, 옵셔널 바인딩 if let
if let newInt = Int(myString) {
    // 형변환 성공 : newInt가 nil이 아님
    print(newInt)
} else {
    // newInt가 nil임
    print("형변환이 실패하였다")
}

// 클래스의 형변환 (다형성)
// 다형성 : 상속관계에서 특정한 클래스만 빼오는 것
class Person {
    var name:String = ""
    func breath() {
        print("숨셔")
    }
}

class Student : Person {
    var school:String = ""
    func gotoSchool() {
        print("출석")
    }
}

class UnivStudent : Student {
    var major:String = ""
    func gotoMT() {
        print("MT go")
    }
}

var grandFa:Person = Person()
var fa:Student = Student()
var son:UnivStudent = UnivStudent()

// is 연산자 : 상속관계의 클래스 객체의 속성을 검사해 볼수 있다. 유전자 검사
grandFa is Person
grandFa is Student
grandFa is UnivStudent

fa is Person
fa is Student
fa is UnivStudent

son is Person
son is Student
son is UnivStudent


// as 연산자 : 클래스 형변환 연산자
// as? 연산자 : nil일 수도 있기에
var optionalCasted:Student?
optionalCasted = grandFa as? UnivStudent
optionalCasted = fa as? UnivStudent
optionalCasted = son as? UnivStudent

// ?? 연산자 : nil이면 디폴트값으로 주는 연산자
optionalCasted = grandFa as? UnivStudent ?? UnivStudent()

// as! 연산자 : nil임을 각오하고 강제 형변환을 해달라
var forcedCasted:Student?
// forcedCasted = grandFa as! UnivStudent
// forcedCasted = fa as! UnivStudent
forcedCasted = son as! UnivStudent

실제 코딩할때도 as 많이 씀

