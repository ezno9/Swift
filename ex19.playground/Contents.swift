import UIKit

// 옵셔널 체이닝
// 널체크를 편하게 해주는 방법


// 옵셔널 변수 관련 기능
// 옵셔널 바인딩   : if let
// 강제 언래핑    : !연산자
// 이른 탈출(복귀) : guard let, guard else
// 옵셔널 형변환   : as? 널이 아니면 형변환
// 옵셔널 기본값   : ?? "기본값"

class Person {
    var objContact : Contact?
    // 생성자 함수에서 초기화
    init() {
        self.objContact = Contact()
    }
}

class Contact {
    var name: String?   // 초기화 안됨
    var phone: String?  // 초기화 안됨
    var email: String = "값"
}

let p = Person()
dump(p)

p.objContact = nil
// objContact가 nil이므로 name = "한지민"으로 대입되지 않고 지나감
p.objContact?.name = "한지민"
dump(p)


// 옵셔널 바인딩으로 처리할 때
if let newObj = p.objContact {
    newObj.name = "남상미"
} else {
    print("nil이다")
}
dump( p )


