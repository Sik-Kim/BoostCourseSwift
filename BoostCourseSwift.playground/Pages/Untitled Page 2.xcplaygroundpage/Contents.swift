import Swift

let age : Int = 10
// age라는 이름으로 타입은 int, 값 10 넣어줌 (이게 상수 선언, 10이란 고정 상수값)
//let은 고정값
"안녕하세요! 저는 \(age)살입니다."

"안녕하세요! 저는 \(age+5)살입니다."

print("안녕하세요~ 저는 \(age+5)살입니다")
// 위에 age라는 변수를 선언했으니 사용 가능 상수 쓸 때는 \() 요거 사용

print("\n##############################\n")

class Person {
    var name: String = "jeongsik"
    var age: Int = 31
}
//클라스 선언, 클라스 쓰고 밑에 똑같이 변수 선언, 클라스는 하부 변수들의 집합이 됨
// var name: type = value (각각의 용어 정확히 이해하기!!)

let yagom: Person=Person()
    // yagom 이라는 이름은 타입(Person 이라는 클라스)의 인스턴스를 생성하겠다???

    print(yagom)
    //print는 단순 문자열 출력함
// 이름 yagom으로 선언한 변수 출력

    print("\n####################\n")
    
    dump(yagom)
    //dump는 print랑 다르게 인스턴스에 대해서 더 자세하게 출력함.
