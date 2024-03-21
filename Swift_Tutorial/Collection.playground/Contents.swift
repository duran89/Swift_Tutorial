import UIKit


// MARK: - Array

//var someArray: [String] = []
//var someArray1: [String] = Array<String>()
//
////print(type(of: someArray))   // Array<String>
////print(type(of: someArray1))  // Array<STring>
//
//
//// 요소 추가
//someArray.append("apple")
//someArray.append("banana")
//print(someArray)    // ["apple", "banana"]
//
//
//// 요소 교체
//someArray[0] = "melon"
//print(someArray)   // ["melon", "banana"]
//
//
//// 요소 삭제
//someArray.remove(at: 0)
//print(someArray)   // ["banana"]
//
//someArray.removeAll()
//print(someArray)   // []
//
//print(someArray.count)   // 0


// MARK: - Dictionary

//var someDictionary: [String: Int] = [:]
//var someDictionary1: [String: Int] = [String:Int]()

//print(type(of: someDictionary))   // Dictionary<String, Int>
//print(type(of: someDictionary1))  // Dictionary<String, Int>


//// 키에 해당하는 값 할당
//someDictionary["kiwi"] = 1000
//someDictionary["melon"] = 2000
//print(someDictionary)  // ["melon": 2000, "Kiwi": 1000]
//
//
//// 키에 해당하는 값 변경
//someDictionary["kiwi"] = 4000
//print(someDictionary)    // ["melon": 2000, "kiwi": 4000]
//
//
//// 키에 해당하는 값 제거
//someDictionary.removeValue(forKey: "melon")
//print(someDictionary)   //  ["kiwi": 4000]



// MARK: - Set

//var someSet: Set<Int> = Set<Int>()
//
//someSet.insert(1)
//someSet.insert(2)
//someSet.insert(3)
//someSet.insert(4)
//someSet.insert(5)
//someSet.insert(6)
//someSet.insert(6)
//
//print(someSet)   // [6, 3, 4, 2, 1, 5]
//
//
//// 요소 삭제
//someSet.remove(3)
//print(someSet)  // 3을 제외한 값 출력 [1, 6, 2, 5, 4]

//
//// Set은 집합연산에서 많이 활용
//let setA: Set<Int> = [1,2,3,4,5,6]
//let setB: Set<Int> = [2,4,6,8,10]
//
//// 합집합
//let union: Set<Int> = setA.union(setB)
//print(union)  // [4, 5, 8, 6, 2, 10, 1, 3]
//
//// 합집합 오름차순 정렬
//let sortedUnion: [Int] = union.sorted()
//print(sortedUnion)   // [1, 2, 3, 4, 5, 6, 8, 10]
//
//// 교집합
//let intersection: Set<Int> = setA.intersection(setB)
//print(intersection)   // [4, 6, 2]
//
//// 차집합
//let subtracting: Set<Int> = setA.subtracting(setB)
//print(subtracting)    // [1, 3, 5]
//)
