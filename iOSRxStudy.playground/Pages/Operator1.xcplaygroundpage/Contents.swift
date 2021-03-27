//: [Previous](@previous)

/*:
 # Operators 1

 Operator는 Observable과 관련된 변환, 처리를 할 수 있게 해줍니다. 기본적으로 어떤 기능을 수행할 수 있는지 알아보겠습니다.

 ## Creating Observables
 Observable을 만들어 내는 Operator들에 대해 알아보겠습니다.

 - Create
   - Observer 메소드를 코드로 호출하여 처음부터 Observable을 생성합니다.

 */
import RxSwift

let createObservable: Observable<Int> = Observable.create { observer -> Disposable in
   observer.onNext(1)
   return Disposables.create()
}
/*:

 - Deferred
   - Observer가 subscribe 할 때까지 Observable을 생성하지 않고, 각 observer에 대해 새로운 Observable을 생성합니다.
   - TBD

 - Empty, Never, Throw
   - 매우 정확하고 제한된 동작을 가진 Observable을 만듭니다.
   - empty : 항목을 방출하지 않지만 `정상적으로 종료`되는 Observable을 생성합니다.
   - never : 항목을 내 보내지 않고 `종료하지 않는` Observable을 생성합니다.
   - throw : 항목을 방출하지 않고 `오류로 종료`되는 Observable 생성합니다.
   - TBD

 - From
   - 다양한 다른 객체와 데이터 유형을 각각의 Observable로 변환합니다.
 */

 let numbers = [1,2,3,4,5]
 let source = Observable.from(numbers)

 source.subscribe {
     print($0)
 }
 //next(1)
 //next(2)
 //next(3)
 //next(4)
 //next(5)
 //completed
 
/*:

 - Interval
   - 특정 시간 간격을두고 일련의 정수를 방출하는 Observable을 생성합니다.
   - TBD
 - Just
   - 특정 항목을 방출하는 Observable 생성.

 */

let source2 = Observable.just((1, 2, 3))

source2.subscribe {
    print($0)
}

let source3 = Observable.just([1,2,3])

source3.subscribe {
    print($0)
}
 
 //next((1, 2, 3))
 //completed
 //next([1, 2, 3])
 //completed
 
/*:
 
 - Range
   - 특정 범위의 순차 정수를 방출하는 Observable 생성합니다.
   - TBD

 - Repeat
   - 특정 항목을 여러 번 방출하는 Observable 생성합니다.
   - TBD

 - Start
   - 함수와 같은 지시문의 반환 값을 내보내는 Observable을 생성합니다.

 - Timer
   - 주어진 지연 후 특정 항목을 방출하는 Observable 생성합니다.
   - TBD

 ## Transforming Observables

 - Buffer
   - Observable이 내보낸 아이템을 주기적으로 모아서 한 번에 하나씩 내보내는 대신 번들을 내보냅니다.
   - TBD

 - FlatMap
   - Observable에서 방출 된 항목을 Observable로 변환 한 다음 해당 항목의 방출을 단일 Observable로 평탄화합니다.
   - TBD

 - GroupBy
   - Observable을 각각 원래 Observable과 다른 항목의 하위 집합을 방출하는 일련의 Observable로 나눕니다.
   - TBD

 - Map
   - 각 항목에 함수를 적용하여 Observable이 내 보낸 항목을 변환합니다.
   - TBD

 - Scan
   - Observable이 내 보낸 각 항목에 순차적으로 함수를 적용하고 각 연속 값을 내 보냅니다.
   - TBD

 - Window
   - Observable에서 Observable 창으로 항목을 주기적으로 세분화하고 한 번에 하나씩 항목을 내보내는 대신 이러한 창을 내 보냅니다.
   - TBD
 
 */

//: [Next](@next)
