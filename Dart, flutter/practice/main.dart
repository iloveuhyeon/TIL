// void main() {
//   var name = "내꼬"; // var을 사용하면 타입엠 맞게 변경해줌
//   String name2 = "니꼬"; //String같은 명확한 타입으로도 정의 가능
//   // name = 1; error
//   name = 'nice';
// }

// void main() {
//   var name; // 변수를 초기화하지 않으면 타입은 dynamic이 된다
//   name = "내꼬"; // name 의 타입이 String
//   name = 1; // name 의 타입이 int
//   name = false; // name의 타입이 boolean

//   if(name is String){

//   }
//   if(name is int)[

//   ]
// }

// void main() {
//   var name = 'nico';
//   // String name = 'naco';

//   name = 'kas'; // 초기화할때와 같은타입이면 수정가능
//   // name = 12; error  같은 타입이 아니라 오류

//   final name2 = "nico"; //final이란 js에 비교하면 const와 비슷한건데 한번 지정하면 변경 불가
//   // name2 = 'kasd'; error 같은 타입이지만 final때문에 변경불가

//   late final String name3; // late는 초기 데이터 없이 변수를 생성할 수 있게 해준다
// // 만약 api요청을 받는다면 그 후에 name3에 값을 넣어도 된다.

//   name3 = 'hello'; // late로 나중에 변수를 넣을 수 있다.
//   //name3 = 'world'; error  final이 들어가서 한번 정의했기 때문에 변경 불가
// }

// void main() {
//   int i = 12;
//   var name = 'la'; // 이것과 위와 같이 만든 변수는 타입만 잘 지켜준다면 언제든지 변경 가능하다
//   i = 1212121212; // i의 타입은 int이기에 숫자로만 변경가능
//   name = 'lalalalalala'; // name의 타입은 String이기에 문자로만 변경 가능

//   final name2 = 'hello'; // final은 변수에초기화한 값을 재할당 시키지 못하도록 한다
//   // name2 = 'world';

//   dynamic name3; // 조심스럽게 사용해야하는 dynamic타입은
//   name3 = "hello world";
//   name3 = 12121212;
//   name3 = true; // 위와 같이 어느 타입으로도 사용할 수 있고

//   if(name3 is String){
//     // 이런식으로 사용한다면 String으로 사용할 수 있는 것들에 접근 가능
//   }

// }

// void main() {
//   String str = "str"; //String
//   bool alive = true; // boolean
//   int age = 10; //integer
//   double money = 69.99; //double

//   num x = 10; // num이 integer의 부모 클래스
//   x = 10.11; // num이 double의 부모 클래스
// }

// void main() {
//   // list
//   var list = [
//     1,
//     2,
//     3,
//     4,
//   ]; // list (리스트를 사용할때 마무리를 쉼표로 마무리하면 위와 같이 보기 쉬워진다)
//   List<int> numbers = [1, 2, 3, 4]; // 이렇게도 가능! 하지만 되도록 var사용할것

//   list.add(5); // 이것은 list라는 리스트에 5라는 값을 포함 시키는것으로 List는 integer이니까 숫자는 가능
//   //list.add('hello'); 하지만 다른 타입은 불가능!!

//   list.first; // 이것은 list라는 리스트의 첫번째 값을 가져온다!
//   list.last; // 이것은 list라는 리스트의 마지막 값을 가져온다!

//   //ex)
//   print(list.first);
//   print(list.last);

//   // 출력하면 1 5 가 나온다1!!
//   // 이외에도 여러가지 메소드들이 있으니 찾아보시길!! (다 사용 못합니다 걱정 마시길)

//   //collection if
//   var giveMeFive = true;
//   var number = [
//     1,
//     2,
//     3,
//     4,
//     if (giveMeFive) 5, // collection if (만약 giveMeFive 변수가 true이면 5를 추가한다)
//   ];

//   // 아래의 코드와 똑같은 내용이지만 더 쉽다
//   // if (giveMeFive) {
//   //   number.add(5);
//   // }

// }

// void main() {
//   var name = 'nico';
//   var gretting = 'hello my name is $name, nice meet you';

//   print(gretting);

//   var age = 10;
//   var gretting2 = 'hello my name is $name and i`m ${age + 2} years ago';

//   print(gretting2);
// }

// void main() {
//   //collection for
//   var oldFriends = [
//     'nico',
//     'lynn',
//   ];

//   var newFriends = [
//     'lewis',
//     'ralph',
//     'darren',
//     for (var firend in oldFriends) "My Favorite $firend", // collection for (old Frineds라는 변수에 있는 친구들을 newFriends에 넣을때 myFavorite을 추가해서 넣어준다)
//   ];

//   //아래의 코드와 같은 내용을 쉽게 축약해서 정리한 것이 collection for 이다
//   // for (var friend in oldFriends) {
//   //   newFriends.add('My favorite $friend');
//   // }
//   print(newFriends);
// }

// void main() {
//   //Maps
//   var human = {
//     'name': 'yuhyeon',
//     'age': '17',
//     'xp': '99.99',
//     'superpower': false,
//   }; // 이것은 maps 이다 이 maps에는 value : key 이런식인데 value라는 값에 key를 넣는 개념이라고 보면 된다
//   // 위의 코드를이렇게도 사용 할 수 있다

//   Map<String, Object> human2 = {
//     'name': 'yuhyeon',
//     'age': '17',
//     'xp': '99.99',
//     'superpower': false,
//   };

//   //여기서 알아두면 좋은것
//   //object라는 타입은 무엇일까 ?? : object는 모든 타입의 부모라고 보면 된다 한마디로 저 object는 모든 자료형이 될 수 있다 약간 var과 비슷하다고 보면 편하다

//   // 그리고 maps에는 list도 사용이 가능하다
//   // 아래 봐보자

//   Map<List<int>,Object> player = {
//     [1, 2, 3, 4, 5] : 'human',
//     [6,7,8,9,10] : 'robot',
//   };

//   //이런식으로 사용이 가능하다

//   // map에서도 list를 사용했는데 list에서도 map을 사용해보자
//   // 아래를 봐보자

//   List<Map<String, Object>> players =[
//     {
//       'name' : 'nico',
//       'xp' : 199999.999999,
//     },
//     {
//       'name' : 'nico',
//       'xp' : 199999.999999,
//     },
//     {
//       'name' : 'nico',
//       'xp' : 199999.999999,
//     },
//     {
//       'name' : 'nico',
//       'xp' : 199999.999999,
//     }
//   ];

//   //위와 같이 만들 수 있다.
// }

// void main() {
//   //Sets
//   var numbers = {1, 2, 3, 4}; // 이것이 sets이다 이 sets는 list와는 비슷하지만 특이한 점이 있다

//   numbers.add(1); // 1을 추가
//   numbers.add(1); // 1을 추가
//   numbers.add(1); // 1을 추가

//   print(numbers); // 이것을 출력하면 {1,2,3,4} 가 출력된다.

//   // 자 다시 돌아가서 일반적인 list를 저렇게 해보자
//   var numbers2 = [1, 2, 3, 4];

//   numbers2.add(1); // 1을 추가
//   numbers2.add(1); // 1을 추가
//   numbers2.add(1); // 1을 추가

//   print(numbers2); // 이것을 출력하면 [1,2,3,4,1,1,1]이 출력된다
//   // (여기서 list와 sets의 차이 하나가 더 있다면 list는 대괄호, sets는 중괄호이다)
//   // sets의 사용은 요소가 항상 하나만 있어냐 한다면 사용하기 좋은것이다 그리하여 sets와 list의 사용을 선택하는것은
//   // 본인의 몫이니 알아서 잘 선택해서 하시길 바랍니다.
// }

// void sayHello(String name) {
//   // 여기서 void는 이 함수에서 return은 하지 않는다는건데
//   print("Hello $name nice to meet you!");
// } // 만약 return을 하려면

// String sayhello2(String name) {
//   //이런식으로 하면 되는데 여기서 void대신 String을 쓴 이유는 return값이 String타입이기 때문이다 만약 당신이 int타입을 return 한다면 String이 아닌 int가 void 대신 와야한다
//   return "Hello $name nice to meet you!";
// } //그리고 위의 방식으로 호출하자마자 바로 return을 하고 함수가 한줄짜리라고 한다면 이 방식 말고도 fat arrow syntax라는 방식으로 할 수 있다

// //fat arrow syntax
// String sayhello3(String name) => "Hello $name nice to meet you!";
// //fat arraw syntax의 다른 예제
// num plus(num x, num y) => x + y;

// void main() {
//   sayHello(
//       'yuhyeon'); // void 형식의 sayhello함수는 호출만 하면 그 함수 안에 print가 있기때문에 따로 print를 안해줘도 되지만
//   print(sayhello2(
//       'yuhyeon')); // 이렇게 다른 타입 형식의 함수를 호출할땐 return이 String형식의 문장이기 때문에 return값을 출력하기 위해서 print를 사용했다
//   print(sayhello3('yuhyeon'));
// }

// String sayHello({
//   required String name,
//   required int age,
//   required String country,
// }) =>
//     "hello $name, you are $age, and you come $country";

// void main() {
//   // print(sayHello('yuhyeon', 17, 'Korea'));
//   // 우리가 일방적으로 함수를 호출할 때에는 이렇게 사용한다
//   // 하지만 이런식으로 함수를 호출할때 파라미터의 순서를 지켜서 적여야하는데
//   // 그러기에는 자주 까먹을 수 있다 그래서 있는것이 Named Parameters인데
//   // 이 기

//   print(sayHello(name: 'yuhyeon', age: 17, country: 'korea'));
// }
