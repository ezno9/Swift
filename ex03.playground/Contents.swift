import UIKit

// 출력문 print, debugPring, dump
var myStr: String = "Swift Programing"

print( myStr )
debugPrint( myStr )
dump( myStr )


class Student {
    var name = "이진호"
}

// 클래스의 객체 선언
var student = Student()
print(student)
debugPrint(student)
dump(student)

// 문자열 보간 : 문자열 연결하기
var age = 30
// print("저의 나이는 " + age)  // java + 연결연산자는 사용하지 못함
print("저의 나이는 \(age)입니다.")
print("저의 나이는 ",age, "입니다.")




