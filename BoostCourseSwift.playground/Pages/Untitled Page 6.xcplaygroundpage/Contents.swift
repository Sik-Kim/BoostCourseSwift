/* 컬렉션 타입 */
/* Array, Dictionary, Set */

import Swift

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//동일한 빈 Array 표현!!! 겁나 많음ㅠㅠㅠ 익숙해져야 할 듯
// var 어레이이름: Array<타입> = 값?
// var integers: Array<Int> = Array<Int>()
// var integers: Array<Int> = [Int]()
// var integers: Array<Int> =[]
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers: [Int]()
//무조건 또 다 호환되는건 아닌가?? 헷갈리네..

//MARK: - Array
// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
integers.append(888)
integers.append(999)
//integers.append(101.1) // 실수는 int로 입력 불가
print(integers) // [1, 100, 888, 999]
print(integers.contains(100)) // true
print(integers.contains(99)) // false
integers[0] = 77   //교체~~~ 0번째에 값 집어 넣는거
print(integers)
integers.remove(at: 3)
integers.removeLast()
integers.removeAll()
// print(integers)

print(integers.count)   // count는 몇개냐? 0개 나옴 왜냐면 이위에서 removeAll로 다 지웠으니꼐

//integers[0] // 범위 초과 - 런타임 오류 발생 왜냐고?? 위에서 integers 배열값 removeAll로 다 지웠잖아. 그래서 0번째 값조차 없는거지
// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

//빈 Array 생성 방법 엄청 많음-_- 위에 참고

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]
// 불면 Array의 요소는 추가/삭제 불가 - 컴파일 오류 발생
// let integers_1 : [Int] = []. // let이라도 빈 Array 생성가능하네 평생 빈 array로 써야하겠지
//immutableArray.append(4)
//immutableArray.removeAll()



//MARK: - Dictionary (어렵노!!!!!!!)

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "valueㅋㅋㅋ"
anyDictionary["anotherKey"] = 100
print(anyDictionary) // ["someKey": "value", "anotherKey": 100]
// Key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) // ["someKey": "dictionary", "anotherKey": 100]
// Key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
// 위에 두줄이 딕셔너리의 값 삭제하는 방법임. 두개 동일하다 보면 됨
print(anyDictionary) // [:]
// 빈 Dictionary 생성, 위에 두줄로 다 삭제 했으니까..

// 초기 값을 가지는 Dictionary 생성
let emptyDictionary: [String: String] = [:]
//딕셔너리도 어레이처럼 [String: String] 이렇게 축약으로 쓸 수 있네.... 헷갈스
// Array/Dictionary<꽁꽁꽁> = [꽁꽁꽁]
// ~< > = [ ]


let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]
//let으로 딕셔너리 넣을 수 있음. 무조건 고정되겠지

// let으로 선언한 불변 Dictionary는 수정 불가 - 컴파일 오류 발생
//emptyDictionary["key"] = "value"
// name 키에 해당하는 값이 Dictionary에 존재하지 않을 수 있으므로
// 컴파일 오류 발생 - 옵셔널 파트에서 상세히 다룹니다
// let someValue: String = initalizedDictionary["name"]





//MARK: - Set
// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(6666)
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(7777)

print(integerSet) // [100, 99, 1, 6666, 7777]
// set은 순서가 없는놈이니 print 할때마다 랜덤으로 순서 나옴....
print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // false
integerSet.remove(100)
integerSet.removeFirst()
// 그러니 특정값 지정한거 아니면 삭제되는것도 랜덤... 신기하네

print(integerSet.count) // 1
// Set는 집합 연산에 꽤 유용합니다
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]
// let setC: Set<Int> = [8,9]  // Set 1개 더 어째 쓰징


// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]
// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
// let sortedUnion: Set<Int> = union.sorted() // 이거는 에러남..
//위에 union(이름)을 지정해줬으니까
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

let sortedIntersection: [Int] = intersection.sorted()
print(sortedIntersection)


// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]
let sortedSubtracting: [Int] = subtracting.sorted()
print(sortedSubtracting)
