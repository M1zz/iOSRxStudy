//: [Previous](@previous)

/*:
 # 비동기 프로그래밍
 
 비동기 프로그래밍을 이해하기 위한 개념들에 대해 정리 해 보도록 하겠습니다.
 
 ## mutable과 immutable
 mutable 변할 수 있는 이라는 뜻 입니다.  immutable는 반대인 불변하다는 뜻 입니다. 변수나 객체는 초기화, 할당되고 난 후 immutable 하다면, 생성된 객체를 수정할 수 없습니다. 반대로 mutable 하다면 다른 값을 할당할 수 있습니다.
 
 ## 일급 객체
 다른 객체들에 일반적으로 적용 가능한 연산을 모두 지원하는 객체입니다. 다음의 조건을 만족하는 객체를 의미합니다.
 
 - 변수나 상수에 저장 및 할당 할 수 있어야 한다.
 - 파라미터(객체의 인자)로 전달 할 수 있어야 한다.
 - 함수(객체)에서 return 할 수 있어야 한다.
 
 
 
 ### 변수나 상수에 저장 및 할당 할 수 있어야 한다.
 */
 func firstClassCitizen(name: String) -> String {
     print("Hello Async")
     return "name"
 }

 let fcc = firstClassCitizen
 fcc("Leeo")

/*:
 위 코드와 같이, 변수나 상수에 저장 될 수 있어야 합니다.
 
 
 
 
 ### 파라미터(객체의 인자)로 전달 할 수 있어야 한다.

 */

 func fccFunc(printName: String) {
     print("이름이 출력됩니다. \(printName)")
 }

fccFunc(printName: fcc("Leeo"))

/*:
 printName라는 인자값으로 전달 할 수 있습니다.
 
 
 
 
 
 ### 함수(객체)에서 return 할 수 있어야 한다.
 */

 func returnFunc() -> String {
     return firstClassCitizen(name: "batGirl")
 }
/*:
 반환값이 firstClassCitizen 이지만, firstClassCitizen은 String을 반환하기 때문에 가능합니다.
 
 
 ## 명령형 프로그래밍 VS 선언형 프로그래밍
 명령형 프로그래밍은 무엇을 `어떻게` 할 것인가 선언형 프로그래밍은 `무엇을` 할 것인가와 가깝습니다.
 
 명령형 프로그래밍을 어떻게 할 것인지를 나타내기 때문에 방법을 명시합니다. 하지만 선언형 프로그래밍을 목적을 이야기 합니다.
 간단한 예제를 비교해서 들어보도록 하겠습니다.
 
 배가 고플 때 이 문제를 해결하기 위해서 위 방법으로 예를 들면,
 명령형 - 배가 고프니까 냉장고에 있는 빵을 꺼내, 전자렌지에 데워서, 잼을 발라 2조각 먹을것이다.
 선언형 - 식사합니다.
 
 로 표현할 수 있습니다. 너무 추상적이니 코드로 살펴보겠습니다.
 명령형  프로그래밍이라면 다음과 같은 코드일 것입니다..
 */

func multipleDouble (arr: [Int]) -> [Int] {
    var results: [Int] = []
    for item in arr {
        results.append(item * 2)
    }
    return results
}
/*:
 다음은 선언형 프로그래밍 입니다.
 */

func multipleDoubleWithMap(arr: [Int]) -> [Int] {
    return arr.map {$0 * 2}
}
/*:
 이제 두 방식의 차이가 이해가 되시나요? 명령형은 어떻게 할 것인지를 쭈욱 나열해주고, 무엇을 할 것인지를 명시해주는 것이 선언형 프로그래밍 입니다.
 */
 
 

//: [Next](@next)
