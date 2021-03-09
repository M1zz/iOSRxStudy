//: [Previous](@previous)

/*:
 # Observables
 Rx에서 observer는 Observable을 subscribes 합니다. 그러면 해당 observer는 Observable이 만드는 시퀀스나 아이템에 반응 합니다.

 앞으로의 그림에서 옵져버블의 타임라인은 왼쪽에서 오른쪽으로 그려집니다. 그리고 알록달록한 도형들은 옵져버블이 만들어 낸 아이 들이죠. 까만 수직선은 옵져버블이 성공적으로 끝이 났다는 뜻 입니다. 점선과, 네모난 상자는 옵저버블이 만들어낸 아이템의 형태를 어떻게 변형시킬 것인지에 대한 내용입니다. 그리고 얼마나 진행되었는지도 알 수 있죠. 만약 어떤 문제가 있다면 X표가 표시되면서 변형되지 못했음을 표시합니다.

 코드로 한 번 살펴보겠습니다.
 
 ```
 // 함수를 호출해서, 그 결과 값을 returnVal 변수에 담습니다.
 returnVal = someMethod(itsParameters)
 // 그리고 returnVal 변수를 가지고 실행합니다.
 ```
 
 이렇게 코드를 짠다면, 우리는 someMethod의 실행결과가 반환될 때 까지, returnVal를 사용할 수 없습니다.

 ```
 // 정의는 하되, 호출은 하지 않는 함수를 하나 정의합니다.t handler
 // 이 예제에서 옵져버는 매우 간단하고 onNext handler만을 가지고 있습니다.
 def myOnNext = { it -> do something useful with it };
 // 옵져버블을 정의는 하지만, 호출하지 않습니다.
 def myObservable = someObservable(itsParameters);
 // Subscriber를 Observable에 구독하고 Observable을 호출합니다.
 myObservable.subscribe(myOnNext);
 // 그리고 내가 할 일을 합니다.
 ```

 구독을 해 놓고 할 수 있는 행위에는 여러가지가 있습니다.
 - onNext
   - Observable은 Observable이 항목을 내보낼 때마다이 메서드를 호출합니다. 이 메소드는 Observable이 내 보낸 항목을 매개 변수로 취합니다.
 - onError
   - Observable은이 메서드를 호출하여 예상 데이터를 생성하지 못했거나 다른 오류가 발생했음을 나타냅니다. onNext 또는 onCompleted를 더 이상 호출하지 않습니다. onError 메소드는 오류의 원인을 나타내는 매개 변수를 사용합니다.
 - onCompleted
   - Observable은 오류가 발생하지 않은 경우 마지막으로 onNext를 호출 한 후이 메서드를 호출합니다.

 
 ```
 def myOnNext     = { item -> [item으로 할 수 있는 다른일을 합니다] }
 def myError      = { throwable -> [실패 호출에 대한 대응] }
 def myComplete   = { [완료 응답이 왔을 때 처리] }
 def myObservable = someMethod(itsParameters)
 myObservable.subscribe(myOnNext, myError, myComplete)
 // 다른 할 일을 합니다.
 ```
 
 Observable은 구독이 가능하니 당연히 일부 Observable은 구독취소도 가능합니다.
 이렇듯, 구독 가능한 녀석을 Observable이라고 합니다.
 */
 
//: [Next](@next)
