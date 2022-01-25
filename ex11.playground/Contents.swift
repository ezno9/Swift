import UIKit
import Darwin

// 문자열 관련 함수들

// String   : 스위프트 구조체 타입 (추천)
// NSString : NS계열 클래스 타입(오브젝티브-C)

// 값 복사를 간편하게 하기 위해서 String을 사용할 것을 권장!!

// NSString => String 변환해서 사용 가능!
let myNSString:NSString = "이진호"
let mySwiftString:String = String( myNSString )

// String => NSString 변환
let againNSString:NSString = NSString(string: mySwiftString)


// 문자열 관련 함수들
var myString: String = "LEE"

// 문자열의 길이
myString.count

// 문자열 비교
let str1:String = "Apple"
let str2:String = "Samsung"
if str1 == str2 { // 자바 : .equal() 함수를 사용.
    print( "문자열이 서로 같음" )
} else {
    print( "문자열이 서로 같지 않음" )
}
    

let result = str1.compare( str2 )
switch result {
    case ComparisonResult.orderedSame :
        print( "같은" )
    case ComparisonResult.orderedAscending :
        print( "같이 큼" )
    case ComparisonResult.orderedDescending :
        print( "값이 작음" )
    default :
        print("그 외의 경우" )
}


// 문자열 연결 : + 연산자 (양쪽 다 문자열 타입이면, +(문자열 연결 연산자)로 동작)
print( str1 + str2 )
print( str1.appending(str2) )


// 문자열에서 특정 문자 하나를 가지고 올 때
let text = "abc"
// print( text[0] ) // 배열처럼 인덱스로 접근 불가
let index = text.index( text.startIndex, offsetBy: 0)
let char : Character = text[index]


// 문자열의 순환
for ch in text {
    print( ch )
}


// 문자형 변수
let char2: Character = "A"  // 문자(하나)형 변수는 쌍따옴표만 사용
let char3: Character = Character("A")


// 문자열에 문자열을 추가
var myName2: String = "이성자"
myName2.insert("!", at: myName2.endIndex)   // 맨 끝에 추가됨.
myName2.insert("@", at: myName2.startIndex) // 맨 앞에 추가됨.

// 중간에 문자열 추가
let index2 = myName2.index(myName2.startIndex, offsetBy: 1)
myName2.insert(contentsOf: "My", at: index2)


myName2 = "이성자"
// 문자열 연결 연산자 +
let myName3 = "My" + myName2


// 문자열 삭제
var myString2: String = "Swift Progamming"
myString2.removeAll()
myString2 = ""




