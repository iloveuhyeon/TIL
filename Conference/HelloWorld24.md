# Hello world 24 강연 내용 

- 세션 1 : 모바일 플렛폼별 선언형 ui 알아보기
    
    목표 : 선언형 ui에 대한 이해, 적합한 선언형 ui 선택하기
    
    선언형 이전 ui 그리기 
    
    안드 : xml사용해서 그림 
    
    iOS : uikit사용해서 그림, 전통적인 mvc
    
    선언형 ui란 ?
    UI = f(state)
    
    플러터는 단일 코드베이스, 핫 리로드, 고성능, 다양한 위젯, material design, cupertino desiogn  사용이라는 장점이 있다 
    
    flutter - stateless, stateful
    
    stateless가 성능이 더 좋다
    
    stateful이랑 stateless 적절히 사용 
    
    column : 세로, row :가로
    
    flutter는 preview가 없음…. ㅜㅜ
    
    아티텍쳐 (중요)
    
    ![스크린샷 2024-03-30 오후 1.30.10.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/e887c72b-6120-4dde-83c8-46c6a607305e/94acb77d-2003-4286-9dc6-c4b27bb2ca36/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-03-30_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_1.30.10.png)
    
    단방향 아키텍쳐 
    - 양방향의 경우 서로 참조하면서 발생하게 되는 side effect 차단 가능
    - 단방향을 사용하면 복잡지 않음 그렇게는 
    
    listview 사용해보기
    
- 세션 2 : 플러터 슬리버로 스크롤 마스터하기
    
    Scrolling in Flutter 
    
    - Scrollable이란 스크롤 가능한 화면을만들기 위한 위젯
    - 대부분 상속 받아서 사용함
    - listview, gridview, pageview, singlechildscrollview 등등에서 이미 사용중
    - listview란 여러 항목을 생성할때 사용
    - gridview는 격자
    - refresh indicator 화면 새로고침
    - reorderblelistview 아이템 옮기기
    - singlechildscrollview 위 아래로 확장 공관 만들기
    - listview와 singlechildscrollview 두가지의 성능 차이로 면접 질문 나타냄
    
    scroll영역은 세가지만 기억하셈ㅁ
    
    - scrollController
    - axis
    - physical
    
    listview 
    
    - listview.builder는 전부 다 생성해서 오류 많음
    - listview.gener
    
    gridview
    
    - gridview는
    
    singlechildscrollview
    
    - 위 아래로 공간 만들때 사용
    
    reorderableListView
    
    - 순서를 바꿀 수 있음
    
    draggablescrollblesheet
    
    - 날짜같은거 선택할때 필요함
    
    pageview
    
    - 뭐 안보여줌….
    
    scroll 팁
    
    - scrollController에 직접 listerer를 사용해서 이벤트에 따른 수신 받을 수 있음
    - notificationListener에서 수신 받음
    - scroll에 expended를 하면 오류 나는데 안됨
    
    sliver가 필요한가? 무조건.
    
    기획자들이 스크롤할때 앱바가 어떻게 되길 바라거나 여러 리스트형형태의 레이아웃이 한번에 스크롤 되길원하는 경우 스크롤 하는 동안 상단에 어떤것이 고정되면 좋겠는 경우
    
    sliverAppbar
    
    sliverToBoxAdapter
    
    Delegate?
    
    위젯은 항상 불변하다.
    
    sliver는 새로운 객체를 만들어야하니 
    
    전 객체가 앞으로 생성할 객체에게 알린다 즉 위임하는 개념.
    
    Flow
    
    자식이 좀 더 늦게 내려가게 할 수 있음 뿐만 아닌 다이나믹한 애니메이션 동작 가능 
    
    QnA 
    
    1. Sliver로 구현한것중 가장 어려웠던게 어떤건지 궁금합니다
    A : 여러 스크롤들을 동기화하는것이 어렵고 처음 스크롤 한 것을 기억 하는것이 어려웠다.
- 세션 3:  플러터 상태관리 2024ver
    
    Created → initState → dirty → build → clean → (만약 setState, didUpdateConfig를 쓴다면 다시 dirty로) dispose → defunct
    
    상태관리를 사용하는이유 
    
    1. 상태관리를 단순하게, 유지보수는 더욱 쉽게 
    2. 앱의 성능을 향상시키기 위해
    3. 앱의 구조를 최적화 하기 위해
    
    하지만 위의 이점은 잘 쓴다는 가정 하에 
    
    잘 쓰는 방법 
    
    1. 상태관리 모델을 선택하는 이유를 명확하게 
    2. best case를 통해 권장하는 패턴 활용 
    3. 프로젝트 구조를 염두한 상태관리 모델 활용 
    
    1위 RiverPod
    
    2위 gets, provider
    
    3위 bloc
    
    SetState 
    
    - 상태관리 모델을 사용하면서 함수같은 역할을 함
    - 단기적으로 쓰는거 추천
    
    bloc 
    
    - flutter와 역사를 같이 한 라이브러리
    - 어렵다
    - stream을 flutter project에 적극적으로 사용한다면 선택 고려
    - cubit : 단순 ui를 핸들링 하는데에 상당히 효과적
    - bloc : event를 기반으로 여러 상태를 한번에 모아서 처리할 경우 효과적
    - view와 biologic이 분리되어 각자 dart파일이 분명하게 분리가 가능함
    
    이벤트리스너 형태는 어렵다 
    
    getx
    
    - flutter안의 또다른 framework느낌
    - 빠르게 만들땐 getx를 사용하지만
    - 유지보수를 하는 프로젝트들은 쓰는건 별로..
    
    provider
    
    - 상태관리 그 자체만을 위해서
    - riverpods를 만들어서 현재는 많이 채택 안함
    - legacy프로젝트를 위해서라면 알아두면 좋음
    
    RiverPods
    
    - 2세대 상태관리 모델 , 완성도 가장 높음
    - 상태관리 모델 객체를 전역변수로 선언하여 활용함
    - 참조하는것이 편함
    - anatomy of riverpods를 보면 riverpods에 대해서 모든것을 알 수있음
    - 코드 재사용성 높음
    - 재사용하거나 분리를 해두어 다른곳에 참조하게 하는것이가능
    - singleton형태의 상태관리 제공
    - 상태 객체를 두번 이상 반복하여 만들지 않기 때문에 메모리적으로 우월
    - 다양한 서브파티
    - Mock등 데이터 구현 쉽다
    
    과연 알려진 상태관리 모델만 사용해야할까? 
    
    아니다 본인 입맛에 맞는거 사용하셈 
    
    jumpit이라는것도 있음 
    
    code generator도구 과연 써야할까?
    
    필요하면 무조건 쓰는게 정답 
    
    하지만 그걸 통해 만들어진 코드가 어떤 역할을 하는지 개발자가 분명히 알아야함 
    
    ‘
    
- 세선 4 : Flutter Animation
    
    animatedBuilder를 사용하면 animation이 적용되는 부분만 리빌드 한다 
    
    custompainer는 직접 그리는것 
    
    그 두개를 하면 직접 만들어서 에니메이션을 적용 할 수 있다 
    
    그런데 Lottie쓰는게 가장 좋다 
        
    flutter flame은 경량 2d 게임 엔진 
    
    하지만 엔진만 있고 중력이나 마찰 그런거 없음 
    
    flutter flame forge 2d에 중력 마찰 등등 있음 
    
- 세션 5 : 플러터 코드 제너레이션 사용해보기
    
    지금 내가 가진 지식으론 이해하기 많이 힘듦…