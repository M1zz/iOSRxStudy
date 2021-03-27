//: [Previous](@previous)

import RxSwift

let createObservable: Observable<Int> = Observable.create { observer -> Disposable in
   observer.onNext(1)
   return Disposables.create()
}
//: [Next](@next)
