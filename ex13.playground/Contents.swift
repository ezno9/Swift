import UIKit

// 콜렉션 Collection (모음 : 라이브러리 모음)
// 1. 리스트   : List ( 배열-리스트 ) 자바 : ArrayList
// 2. 딕셔너리  : Dictionary ( 키-값 ) 자바 : Map
// 3. 집합    : Set ( 집합 구조 ) 자바 : Set


// Array : 같은 타입의 데이터가 나란히 배열된 구조(순서가 존재)
//          Int배열, String배열, 구조체 배열, 객체(클래스) 배열
// 배열을 선언하는 방법
var myArray1: Array<Int> = Array<Int>()
var myArray2: Array<Int> = []   // 1순위
var myArray3: [Int] = []        // 2순위
var myArray4 = Array<Int>()     // 타입추정
var myArray5 = [Int]()          // 타입추정

var myArray6: [Int] = []
myArray6.append(10)
myArray6.append(20)
myArray6.append(30)
print( myArray6 )
dump( myArray6 )

// 포함하고 있는가?
myArray6.contains( 20 )
// 배열 개수
myArray6.count
// 배열 요소의 삭제
myArray6.remove(at: 0) // 첫번째 삭제
myArray6
myArray6.removeLast()  // 마지막 삭제
myArray6
myArray6.removeAll()    // 모두 삭제
myArray6


// 중간에 추가
myArray6.insert(40, at: 0)
myArray6.insert(50, at: 0)


// 배열이 비어있는지?
myArray6.isEmpty


// 배열의 순환
for myInt in myArray6 {
    print( myInt )
}

// 연습문제
// names라는 문자열타입의 배열을 선언하고
// "tom"을 추가하고,
// "john"을 추가하고,
// "hana"을 추가하고,
// 배열의 개수를 출력하시오
// 모든 배열의 요소를 출력하시오
// "john"만 출력하시오
// "tom"이 배열-리스트 안에 존재하는지 확인하시오(true/false)

var names: Array<String> = []
names.append("tom")
names.append("john")
names.append("hana")
names.count
for myStr in names {
    print ( myStr )
}
print( names[1] )
names.contains("tom")

// 요소의 인덱스를 가져올 때
if let index = names.firstIndex(of: "tom") {
    print( "tom의 인덱스는 ", index)
}

// 배열 관련 자료형
// NS계열 : NSArray (읽기만 가능), NSMutableArray(읽기, 쓰기 가능)
// Swift계열 : Array (var, let)

// NSArray -> Array 변환
var myNSArray = NSArray(objects: "a", "b", "c")
// NSArray -> NSMutableArray
var myNSMutableArray = NSMutableArray(array: myNSArray)
// NSMutableArray -> Swift Array
if let mySwiftArray = myNSMutableArray as NSArray as? Array<String> {
    print( mySwiftArray )
}

// as 형변환
// as? 옵셔널 형변환 ( 널이 아니면 변환해라! )

// Swift Array -> NSMutableArray
var mySwiftArray2 : [String] = ["a","b","c"]
var myNSMutableArray2 = NSMutableArray(array: mySwiftArray2)

// Swift Array -> NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)


// 배열의 값 비교
let myArray7 = [1,2,3,4,5]
let myArray8 = [1,2,3,4,5]
if myArray7 == myArray8 {
    print("값이 같음")
} else {
    print("값이 다름")
}

// 배열의 값을 치환하기
var myArray9 = ["A", "B", "C"]
myArray9.replaceSubrange(0..<2, with: ["X","Y"])

// 배열의 값 정렬
var myArray10 = ["나","다","가"]
let sortedArray = myArray10.sorted()

// 내림차순
let reversedSortedArray = Array(myArray10.sorted().reversed())

// 특정 범위에서 요소를 추출해서 배열 만들기
let rangeArray = sortedArray[1...2]

// 구조체(클래스) 객체 배열 만들기
struct MyStruct {
    var name = "LEE"
    var age = 30
    func myFunc() {
        print( "myFunc() 호출")
    }
}

// 구조체 배열로 만들기
var myStructArray: [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArray.append( myStruct1 )
myStructArray.append( myStruct2 )

for myStruct in myStructArray {
    print( myStruct.name)
    print( myStruct.age)
    myStruct.myFunc()
}
