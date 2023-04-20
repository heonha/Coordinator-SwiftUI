# SwiftUI with Coordinator 관련 자료

Coordinator를 통해 SwiftUI NavigationView에서 종종 발생하는   
Push <-> Pop 무한반복 문제를 해결하기 위하여 찾던 중 다양한 영상과 글을 참고하였지만   
아래 글이 `UIKit을 의존하지 않으면서` Coordinator를 구현할 수 있어 채택하게 되었습니다.   
설명이 잘 되어있으니 아래 `이호승`님의 글을 참고 하시면 빠른 이해와 도움을 받을 수 있습니다.

<br>

**SwiftUI NavigationView로 Coordinator Pattern 사용하기 | 이호승님**
https://labs.brandi.co.kr//2022/12/12/leehs81.html
https://github.com/urijan44/SwiftUICoordinator

<br>

위 글의 코드에서 `Init & Deinit 디버깅 문구를 추가`하여  
Coordinator의 Lifecycle을 확인할 수 있도록 하였습니다.
대부분의 알고리즘은 위 글을 참고하였음을 알립니다.

<br>

---

### 공부하며 참고했던 SwiftUI Coordinator 관련 자료

> 다양한 사례를 참고하면 좋다고 생각하므로 아래는 현재까지 찾았던 영상, 글도 함께 링크를 넣겠습니다.


**Swift Tutorial: How to use Coordinator Pattern with MVVM - Advanced Navigation in UIKit & SwiftUI | Karin Prater**
- MVVM-C 패턴 구현에 대한 내용입니다.
- UIKit, SwiftUI 두가지 모두 각각 다루고 있습니다.   
https://youtu.be/wpw3l_jTuOo
https://github.com/gahntpo/CoordinatorProject

<br>

**An Introduction to Coordinator pattern in SwiftUI | Mohammadreza Koohkan**
- SwiftUI View에 Coordinator는 UINavigationController를 기반으로 한 Coordinator를 구현하는 내용입니다.   
https://medium.com/better-programming/an-introduction-to-coordinator-pattern-in-swiftui-38e5b02f031f
