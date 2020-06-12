/* 함수 */

import Swift

//MARK: - 함수의 선언
//MARK: 함수선언의 기본형태
//func <#함수이름#>(<#매개변수1이름#>: <#매개변수1타입#>, <#매개변수2이름#>: <#매개변수2타입#> ...) -> <#반환타입#> {
//    <#함수 구현부#>
//    return <#반환값#>
// }
func sum(a: Int, b: Int) -> Int {
    return a + b
}



//MARK: 반환 값이 없는 함수
//func <#함수이름#>(<#매개변수1이름#>: <#매개변수1타입#>, <#매개변수2이름#>: <#매개변수2타입#> ...) -> Void {
//    <#함수 구현부#>
//    return
//}
func printMyName(name: String) -> Void {
    print(name)
}




//func <#함수이름#>(<#매개변수1이름#>: <#매개변수1타입#>, <#매개변수2이름#>: <#매개변수2타입#> ...) {
//    <#함수 구현부#>
//    return
//}
func printYourName(name: String) {
    print(name)
}

func hello() -> Void { print("hello")}

func kakaka() -> Void{
print("kakiko")
}
kakaka()

//MARK: 매개변수가 없는 함수
//func <#함수이름#>() -> <#반환타입#> {
//    <#함수 구현부#>
//    return <#반환값#>
//}

// 이건 뭐고. 최대값??
func maximumIntegerValue() -> Int {
    return Int.max
}

// 함수(func) 사용하는 방법
sum(a: 3, b: 5)
printMyName(name: "Jeongsik")
printYourName(name: "Namu")
hello()
kakaka()
maximumIntegerValue()

// 1-08 강의
//MARK: - 매개변수 기본값
// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다
//func <#함수이름#>(<#매개변수1이름#>: <#매개변수1타입#>, <#매개변수2이름#>: <#매개변수2타입#> = <#매개변수 기본값#> ...) -> <#반환타입#> {
//    <#함수 구현부#>
//    return <#반환값#>
//}
func greeting(friend: String, me: String = "yagom") { //me에 대한 값은 yagom으로 기본값 줌)
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다
greeting(friend: "hana") // Hello hana! I'm yagom
//yagom은 별도로 출력값 지정안해도 자동으로 기본값 출력됨
greeting(friend: "john", me: "eric") // Hello john! I'm eric
// 기본값이 있었으나 새로운 값 출력했으니 변경됨

//MARK: - 전달인자 레이블
// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다
//func <#함수이름#>(<#전달인자 레이블#> <#매개변수1이름#>: <#매개변수1타입#>, <#전달인자 레이블#> <#매개변수2이름#>: <#매개변수2타입#> ...) -> <#반환타입#> {
//    <#함수 구현부#>
//    return
//}
// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 위에랑 똑같이 함수이름 greeting을 사용했지만 from, to도 포함하여 함수 구분을 하기 때문에 다른 함수라고 볼 수 있어 사용 가능함

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom
//매개변수이름 구분하기 쉬울려고 to, from 이런거 써주는거임

//MARK: - 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다
// 가변 매개변수는 함수당 하나만 가질 수 있습니다
//func <#함수이름#>(<#매개변수1이름#>: <#매개변수1타입#>, <#전달인자 레이블#> <#매개변수2이름#>: <#매개변수2타입#>...) -> <#반환타입#> {
//    <#함수 구현부#>
//    return
//}
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
 print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!
print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!

/*
 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다
 */


// 2개 매개변수(me랑 friends) 둘 다에 ... 사용은 불가함??? 테스트해보니 에러 뜨네. 일단 넘어가자..
// {} 여기 안에 들어가는 return이랑 print() 어떻게 구분해서 쓰는거지....



//MARK: - 데이터 타입으로서의 함수
// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있습니다
//MARK: 함수의 타입표현
// 반환타입을 생략할 수 없습니다
// (<#매개변수1타입#>, <#매개변수2타입#> ...) -> <#반환타입#>
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom") // Hello eric! I'm yagom
 someFunction = greeting(friend:me:)
someFunction("ericcc", "yagommm") // Hello eric! I'm yagom

// 타입이 다른 함수는 할당할 수 없습니다
// someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))
runAnother(function: greeting(to:from:)). // 이건 되네
// runAnother(function: greeting) // 이건 에러남

// Hello jenny! I'm mike
runAnother(function: someFunction)



// 하 함수 개어렵네 함수만 한 세시간 본거같은데.... 후 나중에는 걍 자연스레 하겠지???? 반복만이 살길
