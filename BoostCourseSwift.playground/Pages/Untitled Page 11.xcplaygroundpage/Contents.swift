/* 옵셔널 */

import Swift

//MARK:- 암시적 추출 옵셔널  // !
// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 99  // nil 일수도 아닐수도

//옵셔널 타입 자체는 열거형이라 switch 구문으로 case 로 구분

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

//MARK:- 옵셔널 // ?
// Optional
var optionalValue: Int? = 77 // ?는 인트값이 들어 있을수도 없을수도

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

 optionalValue = optionalValue + 1  //역시 에러
// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1
