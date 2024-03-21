import UIKit

let sum: Int
var inputValue1: Int = 200
var inputValue2: Int = 300


// sum 선언 후 할당
sum = inputValue1 + inputValue2

print(sum)    // 500

// sum = 200   // 오류 발생

inputValue1 = 300
inputValue2 = 10000

var newSum: Int = inputValue1 + inputValue2

print(newSum)   // 10300
