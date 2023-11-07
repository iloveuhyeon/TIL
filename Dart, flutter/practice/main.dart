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

void main() {
  // list
  var list = [
    1,
    2,
    3,
    4,
  ]; // list (리스트를 사용할때 마무리를 쉼표로 마무리하면 위와 같이 보기 쉬워진다)
  List<int> numbers = [1, 2, 3, 4]; // 이렇게도 가능! 하지만 되도록 var사용할것

  list.add(5); // 이것은 list라는 리스트에 5라는 값을 포함 시키는것으로 List는 integer이니까 숫자는 가능
  //list.add('hello'); 하지만 다른 타입은 불가능!!

  list.first; // 이것은 list라는 리스트의 첫번째 값을 가져온다!
  list.last; // 이것은 list라는 리스트의 마지막 값을 가져온다!

  //ex)
  print(list.first);
  print(list.last);

  // 출력하면 1 5 가 나온다1!!
  // 이외에도 여러가지 메소드들이 있으니 찾아보시길!! (다 사용 못합니다 걱정 마시길)

  //collection if
  var giveMeFive = true;
  var number = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if (만약 giveMeFive 변수가 true이면 5를 추가한다)
  ];

  // 아래의 코드와 똑같은 내용이지만 더 쉽다
  // if (giveMeFive) {
  //   number.add(5);
  // }
}
