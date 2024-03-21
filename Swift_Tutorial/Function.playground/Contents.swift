import UIKit

// MARK: - 함수
 
// 기본형태
 /*
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}
 */

// 예: 두 개의 정수를 받아서 더한 값을 정수로 반환하는 함수


//func sum(a: Int, b: Int) -> Int {
//    return a + b
//}
 

 
/*
반환 값이 없을 경우에는 반환 타입에 Void를 설정하거나, 반환 타입을 생략할 수 있다.
*/
 

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//    /* 함수 구현부 */
//    return
//}


//예: 매개변수 name에 String 타입의 값을 입력 받아 이름을 출력하는 함수


//func printMyName(name: String) -> Void {
//    print(name)
//}
//
//printMyName(name: "Mike")  // Mike 출력
//
//var jerry: Void = printMyName(name: "Jerry")
 

// 매개변수와 반환값이 없는 함수
 
/*
func 함수이름() -> Void {
    /* 함수 구현부 */
    return
}
*/

 

// 함수 구현이 짧은 경우에는 한 줄로 표현도 가능하다.

// func hello() -> Void { print("hello") }
 
// hello()
