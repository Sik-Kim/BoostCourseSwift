var myName: String? = "wimes"

// 옵셔널 바인딩을 통한 임시 상수 할당
if let name = myName{
    print("My name is \(name)")
}else{
    print("myName is nil")
}
// My name is wimes

// 옵셔널 바인딩을 통한 임시 변수 할당
if var name = myName{
    name = "john"
    print("My name is \(name)")
}else{
    print("myName is nil")
}
// My name is john

print(myName) // Optional("wimes")
