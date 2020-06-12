
/* 조건문 */

import Swift

let someInteger = 1001

//MARK: - if-else
//if <#condition#> {
//    <#statements#>
//} else if <#condition#> {
//    <#statements#>
//} else {
//    <#statements#>
//}
if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100
// 스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다
//if someInteger { }
//MARK: - switch
//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100
// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "mina" {
case "jake":
     print("jake")
//fallthrough //(c언어의 break 기능함) 이거 쓰면 위에 print 지워도 에러 안남
case "mina":
    print("mina")
fallthrough
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!
