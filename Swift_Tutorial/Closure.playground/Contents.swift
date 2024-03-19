import UIKit

var greeting = "Hello, playground"


// String을 반환하는 클로저
let myName: String = {
    return "밤새는 탐험가13"
}()

print(myName)



// 클로저 정의
let myMainName: (String) -> String = { (name: String) -> String in return "개발하는 \(name)"}

print(myMainName("밤새는 탐험가 25"))


// 반환하는 값이 없을 경우는 Void로 처리 한다.
let myNickName: (String) -> Void = { (name: String) in
    print("나의 닉네임은 : \(name)")
}

myNickName("밤새는 탐험가 100")
