import UIKit


// 프로토콜 (Protocol)
// 가상함수 : 함수의 선언만 있고, 본체(코드)는 없는 함수 선언
// 특징 : 다중 상속 가능(여러 프로토콜을 한번에 상속(확장)할 수 있다)

protocol Talkable {
    var lang:String { get } // 읽기 속성만 존재
    var topic: String { get set } // 읽기 쓰기 속성 존재
    func talk() // 가상함수, 선언만 있고 본체가 없다.
}


protocol Runalbe {
    func run() // 가상함수
}

struct Person : Talkable, Runalbe {
    var lang: String // 프로퍼티(속성)을 준수
    var topic: String // 프로퍼티(속성)을 준수
    func talk() {
        print("말할 수 있음")
    }
    func run() {
        print("말할 수 없음")
    }
}


var p: Person = Person(lang: "영어", topic: "교육주제")
p.talk()
p.run()


// 클래스의 오버로딩 : 함수의 매개변수를 다르게 함으로써 같은 이름의 함수를 확장
//        오버라디이 : 자식 클래스에서 부모클래스의 메소드(함수)를 재정의해서 사용
class ParentClas {
    func printMyName(name:String) {
        print("parent : ", name)
    }
    func printMyName(name:String, age:Int) {
        print("name : ", name)
        print("age : ", age)
    }
}
var pClass:ParentClas = ParentClas()
pClass.printMyName(name: "한지민")
pClass.printMyName(name: "정해인", age: 23)


class ChildClass : ParentClas {
    // 오버라이딩 : 재정의
    override func printMyName(name: String) {
        print("child : ", name)
    }
}
var cClass:ChildClass = ChildClass()
cClass.printMyName(name: "스타벅스")



