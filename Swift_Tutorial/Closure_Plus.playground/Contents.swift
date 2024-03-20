import UIKit

//let sayHello: (String) -> String = { (name: String) -> String in return "\(name) 안녕"}
//
//var jerry: String = sayHello("제리")
//
//print(jerry)
//

//
//
//func greetingInfo(name: String, method: (String) -> String) -> String {
//    return "함수의 전달인자로 받은 클로저가 실행한 결과: " + method(name)
//}
//
//jerry = greetingInfo(name: "제리", method: sayHello)
//
//print(jerry)
//
//jerry = greetingInfo(name: "제리1", method: { (name: String) in
//    return "함수를 호출할 때 클로저를 작성하여 전달 가능: \(name)"
//})

//print(jerry)
// completion 이라는 클로저를 매개변수로 가지는 함수(=메소드)
//func sayHello(completion: () -> Void) {
//    print("sayHello() 호출")
//    sleep(2)
//    completion()
//}

// 메소드 호출부에서 이벤트 종료를 알 수 있다.
/*
sayHello(completion: {
    print("sayHello() 호출 완료 1")
})

sayHello() {
    print("sayHello() 호출 완료 2")
}

sayHello {
    print("sayHello() 호출 완료 3")
}
*/

/*
// 매개변수로서 데이터를 반환하는 클로저
func sayHelloWithName(completion: (String) -> Void) {
    print("sayHelloWithName() 호출")
    sleep(1)
    completion("매개변수로서 데이터를 반환한다.")
}

sayHelloWithName(completion: { (text: String) in
    print("sayHelloWtihName 호출 내용", text)
})

// text 라는 매개변수의 타입을 알고 있다면 String 타입 생략 가능
sayHelloWithName(completion: { text in
    print("sayHelloWtihName 호출 내용 (타입 생략)", text)
})

// (completion: ) 생략 가능
sayHelloWithName { text in
    print("sayHelloWtihName 호출 내용 (함수 매개변수 생략)", text)
}

// text 라는 문구랑 "in" 키워드 생략 가능
// "$0"을 넣는다. 매개변수가 여러개면 $0, $1 이런식으로 간다.
sayHelloWithName {
    print("sayHelloWtihName 호출 내용 (text, in 생략) ", $0)
}
*/

/*
// 매개변수로서 데이터를 여러 개 반환하는 클로저
func sayHelloWithFullName(completion: (String, String) -> Void) {
    print("sayHelloWithFullName() 호출")
    sleep(2)
    completion("안녕", "안녕하세요")
}

sayHelloWithFullName { first, second in
    print("첫 번째: \(first), 두 번째: \(second)")
}

// $ 사용한다면
sayHelloWithFullName {
    print("첫 번째: \($0), 두 번째: \($1)")
}
 
// 만약에 특정 매개변수를 쓰고 싶지 않다면 "_" 사용한다.
 sayHelloWithFullName { _, second in
     print("첫 번째: , 두 번째: \(second)")
 }

*/



// 옵셔날
func sayHelloWithOptional(completion: (() -> Void)? = nil) {
    print("sayHelloWithOptional() 호출")
    sleep(2)
    // completion 클로저 실행
    completion?()
}
  
sayHelloWithOptional()

// 값을 반환하고 싶다면? 완료 후에 결과를 내놓고 싶을 때는 아래와 같이 쓴다.
sayHelloWithOptional(completion: {
    print("sayHelloWithOptional() 호출: 결과값 반환")
})


// () -> Void
//func completion() {
//    
//}

// (Int) -> String

//func transform(number: Int) -> String {
//    return "숫자: \(number)"
//}

//컬렉션 배열

/*
var myNumbers: [Int] = [0, 1, 2, 3, 4, 5]


var transformedNumbers = myNumbers.map { num in
    return "숫자: \(num)"
}

var transformedNumbersWithType = myNumbers.map { (num: Int) -> String in
    return "숫자: \(num)"
}

var transformedNumbersWithout = myNumbers.map {
    return "숫자: \($0)"
}

print(transformedNumbers)
print(transformedNumbersWithType)
print(transformedNumbersWithout)


//func greetingInfo(name: String, method: (String) -> String) -> String {
//    return "실행한 결과: " + method(name)
//}
//
//var tom: String
//
//tom = greetingInfo(name: "tom", method: { (first: String) -> String in
//return "안녕 \(first)"})
//
//print(tom)  // 실행한 결과: 안녕 tom
//
//// 축약 후
//tom = greetingInfo(name: "tom") { "안녕하세요 \($0)"}
//print(tom)  // 실행 결과: 안녕하세요 tom

*/
