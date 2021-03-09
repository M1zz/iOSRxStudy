//: [Previous](@previous)

/*:
# Subjects
Subject는 observer 및 Observable 역할을 모두 수행하는 Rx의 일부에서 사용할 수 있는 일종의 브릿지 또는 프록시입니다. 일단 observer이기 때문에 하나 이상의 observable을 구독 할 수 있습니다. 또한 Observable이기 때문에 관찰 한 항목을 재 발송하여 통과 시킬수도 있으며, 아얘 새 아이템을 내보낼 수도 있습니다.

Subjects의 설명만 보았을 때, 여러가지 기능을 할 수 있을 것 같은데 디테일하게 어떤 일들을 할 수 있는지 살펴 보도록 하겠습니다.

1. AsyncSubject는 소스 Observable이 완료된 후에, 소스 Observable이 내보낸 마지막 값을 내 보냅니다. (소스 Observable이 값을 내 보내지 않으면 AsyncSubject도 값을 내 보내지 않고 종료됩니다.)

2. BehaviorSubject를 구독하면 소스 Observable이 가장 최근에 내 보낸 아이템을 내 보낸 다음 소스 Observable이 그 뒤로 내 보내는 다른 아이템을 계속 내 보냅니다.

3. PublishSubject 구독한 이후에 소스 Observable에 의해 방출 된 아이템만 observer에게 방출합니다.

4. ReplaySubject는 observer가 구독한 시기에 관계없이 소스 Observable가 내보낸 모든 아이템을 observer에게 내보냅니다.
 */
//: [Next](@next)
