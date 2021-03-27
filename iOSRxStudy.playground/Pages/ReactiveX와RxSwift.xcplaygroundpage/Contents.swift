//: [Previous](@previous)

/*:
 # ReactiveX와 RxSwift
 
 RxSwift = Rx(ReactiveX) + Swift  입니다. 이름에서도 알 수 있듯이 Swift에 Rx를 더한것이죠.
 스위프트는 이미 알고 있는 것이므로 먼저 Rx에 대해서 알아보도록 하겠습니다. 아얘 모르는 단어들이 있어서 개념을 익히기 전에 단어들 부터 정리하고 가도록 하겠습니다.
 
 ## ReactiveX
 ReactiveX는 Reactive eXtensions의 줄입말 입니다.
 
 공식 페이지에서 소개한 가장 첫 줄을 보면, 옵져버블한 시퀀스를 사용하여, 비동식의 이벤트기반의 프로그램을 구성하기 위한 라이브러리라고 소개되고 있습니다. 옵져버블 패턴을 확장해 데이터와 이벤트를 다룰 수 있게 해줍니다.
 
 이 라이브러리는 `filter, select, transform, combine, compose Observables` 와 같은 여러가지 연산자를 제공해줍니다.

 
 ## RxSwift란?
 Swift라는 언어로, Functional Reactive Programming 이 가능하게 해주는 ReactiveX 라이브러리 입니다. 
 
 
 ## Playground에서 RxSwift쓰기
 나는 예제를 플레이그라운드에서 쓰고 싶은데, 서드파티 라이브러리가 없는 문제에 부딪혔습니다. Playground RxSwift를 찾아보면, 많이 나오지만 SPM을 쓸 수 있는데 굳이 CocoaPod을 써야하나 라는 생각에 정리해 보았습니다.
 새로운 프로젝트를 만들어서, File -> Swift Packages -> Add Package Dependency... 로 RxSwift를 추가합니다.
 그리고 나서 File -> New -> Playground 로 새 플레이 그라운드를 추가해 줍니다.
 */


//: [Next](@next)
