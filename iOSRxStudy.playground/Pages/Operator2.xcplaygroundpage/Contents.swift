//: [Previous](@previous)

/*:
 ## Filtering Observables
 
 - Debounce
   — 다른 항목을 내 보내지 않고 특정 시간 범위가 지난 경우에만 Observable에서 항목을 방출합니다. throttle
 - Distinct
   — Observable에 의해 방출 된 중복 아이템을 방출하지 않습니다.
 - ElementAt
   - Observable에 의해 방출 된 n 번쩨 아이템만 방출
 - Filter
   — Observable에서 조건에 통과한 아이템 만 내 보냅니다.
 - First
   — Observable이 내보낸 첫 번째 아이템 (또는 특정 조건을 충족하는 첫 번째 아이템) 만 방출합니다.
 - IgnoreElements
   — Observable에서 아이템을 방출하지 않고 종료 알림을 보냅니다.
 - Last
   — Observable에 의해 내보낸 마지막 아이템 (또는 특정 조건을 충족하는 마지막 아이템) 만 방출합니다.
 - Sample
   — 주기적인 시간 간격 내에 Observable이 내 보낸 가장 최근 항목을 내 보냅니다.
 - Skip
   — Observable에 의해 방출 된 처음 n 개의 항목을 내보내지 않습니다.
 - SkipLast
   — Observable에 의해 방출 된 최종 n 개 항목 억제
 - Take
   — Observable에 의해 방출 된 처음 n 개의 항목 만 방출합니다.
 - TakeLas
   - Observable에 의해 방출 된 마지막 n 개 항목 만 방출합니다.
 
 ## Combining Observables
 - AndThen/When
   - 패턴 및 계획 중개자를 통해 두 개 이상의 Observable이 내 보낸 항목 세트 결합
 - CombineLatest
   - 항목이 두 Observable 중 하나에 의해 방출 될 때 지정된 함수를 통해 각 Observable에서 방출 된 최신 항목을 결합하고이 함수의 결과에 따라 항목을 방출하십시오.
 - Join
   - 다른 Observable이 방출 한 항목에 따라 정의 된 시간 창 동안 하나의 Observable에서 항목이 방출 될 때마다 두 Observable이 방출하는 항목을 결합합니다.
 - Merge
   - 방출을 병합하여 여러 Observable을 하나로 결합
 - StartWith
   - 소스 Observable에서 항목을 방출하기 전에 지정된 일련의 항목을 방출하십시오.
 - Switch
   - Observable을 방출하는 Observable을 해당 Observable 중 가장 최근에 방출 된 항목을 방출하는 단일 Observable로 변환하십시오.
 - Zip
   - 지정된 함수를 통해 여러 Observable의 방출을 함께 결합하고이 함수의 결과에 따라 각 조합에 대해 단일 항목을 방출합니다.
 
 */
import Foundation

var str = "Hello, playground"

//: [Next](@next)
