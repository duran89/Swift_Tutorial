import UIKit


// MARK: - Function plus

//매개변수 기본 값
//매개변수에 기본적으로 전달될 값을 미리 지정할 수 있다.
//
// 
//
//⭐️ 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤 쪽에 위치하는 것이 좋다.
//
// 
//
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//    /* 함수 구현부 */
//    return 반환값
//}
// 
//
// 
//
//예: friend 라는 매개변수에는 기본값이 없고, me 라는 매개변수에는 기본값을 할당 함수
//
// 
//
//func greeting(friend: String, me: String = "mike") {
//    print("Hello \(friend)! I'm \(me)")
//}
// 
//
// 
//
//greeting 함수를 호출하면?
//
// 
//
//greeting(friend: "jerry")   // Hello jerry! I'm mike
//greeting(friend: "jerry", me: "tom")   // Hello jerry! I'm tom
// 
//
// 
//
//전달인자 레이블
//함수를 호출할 때 사용자 입장에서 매개변수의 역할을 명확히 표현하고 싶을 때 사용한다.
//
// 
//
//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    /* 함수 구현부 */
//    return
//}
// 
//
// 
//
//함수 내부에서 전달인자를 사용할 때에는 매개변수를 사용한다.
//
// 
//
//func greeting(to friend: String, from me: String) {
//    print("Hello \(friend)! I'm \(me)")
//}
// 
//
// 
//
//단, 함수를 호출하는 경우에는 전달인자 레이블을 사용한다.
//
// 
//
//greeting(to: "hana", from: "jerry") // Hello hana! I'm jerry
// 
//
// 
//
//가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용한다.
//
// 
//
//⭐️ 가변 매개변수는 함수 당 1개만 가질 수 있다.
//
//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//    /* 함수 구현부 */
//    return
//}
// 
//
// 
//
//예: friends라는 매개변수를 가변 매개변수로 설정(... 추가)
//
//(함수 당 1개의 가변 매개변수만 가능)
//
// 
//
//func sayHelloToFriends(me: String, friends: String...) -> String {
//    return "Hello \(friends)! I'm \(me)!"
//}
// 
//
// 
//
//sayHellToFriends() 함수를 호출하면?
//
// 
//
//print(sayHelloToFriends(me: "jerry", friends: "hana", "eric", "wing"))
//// Hello ["hana", "eric", "wing"]! I'm jerry!
// 
//
// 
//
//이 때, 가변 매개변수 friends에 값 전달하지 않았다면?
//
//friends는 빈 배열로 출력된다.
//
//print(sayHelloToFriends(me: "jerry"))
//// Hello []! I'm jerry!
// 
//
// 
//
//데이터 타입으로서의 함수
//스위프트에서 함수는 일급 객체이다.
//
//함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수 있다.
//
// 
//
// 
//
//함수의 타입표현
//이때 반환타입은 생략할 수 없다.
//
// 
//
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입
// 
//
// 
//
//함수타입 사용
//변수 someFunction는 (String, String) 두 개의 String 타입의 값을
//
//Void 형태, 즉 반환타입이 없는 함수 타입이다.
//
// 
//
//⭐️ 변수에 할당할 함수의 타입 역시, 변수 타입과 동일해야 한다.
//
//greeting 함수 타입: (String, String) -> Void
//
//func greeting(to friend: String, from me: String = "mike") {
//    print("Hello \(friend)! I'm \(me)")
//}
//
//var someFunction: (String, String) -> Void = greeting(to:from:)
//
//someFunction("mike", "jerry")   // Hello mike! I'm jerry
// 
//
// 
//
//runAnother 함수의 매개변수 function의 데이터 타입은 "(String, String) -> Void"  함수 타입이다.
//
//함수 내부에서는 매개변수 function을 호출하는 중첩함수의 구조이다.
//
// 
//
//func runAnother(function: (String, String) -> Void) {
//    function("jenny", "mike")
//}
// 
//
// 
//
//runAnother 함수의 매개변수 function에는 함수를 넣어 호출한다.
//
// 
//
//runAnother(function: greeting(to:from:))   // Hello jenny! I'm mike
// 
//
// 
//
//또는 이전에 greeting 함수를 할당한 someFunction이라는 변수를
//
//runAnother의 function 매개변수에 넣을 수 있다.
//
// 
//
//⭐️ function의 매개변수 데이터 타입과 someFunction의 데이터 타입이 동일해야 가능하다.
//
//function의 데이터 타입: (String, String) -> Void
//
//someFunction의 데이터 타입: (String, String) -> Void
//
// 
//
//runAnother(function: someFunction)
// 
//
// 
//
//⭐️ 함수와 메서드 차이
// 
//
//둘의 기능이나 사용하는 방법에 대한 차이는 없다. (동일하다.)
//
//다만 어디에 위치하는지, 속해 있는지에 따라 부르는 이름이 다를 뿐이다.
//
// 
//
//메서드: struct, enum, class 와 같은 유형에 속해 있을 떄
//
//함수: 메서드가 속한 상황 외
