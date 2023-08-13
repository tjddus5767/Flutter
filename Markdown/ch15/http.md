# 깡샘의 플러터&다트 프로그래밍 15-2

### HTTP란? 
- **Hyper Text Transfer Protocol**의 두문자어로, **인터넷에서 데이터를 주고받을 수 있는 프로토콜**이다.
    - **프로토콜**은 규칙이라고 생각하면 된다
    - 웹 브라우저와 웹 서버 간의 통신에 주로 사용


---

- **http 패키지 추가하기**  
```
dependencies:
    http: ^1.1.0
```
- **http 패키지 임포트**  
`import 'package:http/http.dart as http;`

- 서버에 요청하는 **get( )** 함수 이용
```dart
http.Response response = await http.get(
        //get함수로 서버에 요청을 보내면 http.Response 타입으로 전달된다. response에 저장
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
)
```

- 서버에 전달한 데이터 얻기

```dart
if (response.statusCode == 200) {
      //response 객체의 statusCode 속성으로 응답 상태 코드 확인 가능
      setState(() {
        result = response.body; //서버에서 전달한 데이터는 response의 body로 확인
      });
    }
```

- **header** 이용하기
```dart
Map<String, String> headers = {
      "content-type": "application/json", //content-type: http 요청의 본문(body)이 어떤 타입의 데이터를 포함하는지 알려준다
      "accept": "application/json", //accept: 헤더가 받아들일 수 있는 컨텐츠 타입
    };
    http.Response response = await http.get(
        //get함수로 서버에 요청을 보내면 http.Response 타입으로 전달된다.
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
        headers: headers);
```
> 아직 정확히 이해 못했다


---

- **post** 방식으로 요청하기
    - post방식은 서버에 전송할 데이터를 url 뒤에 추가하지 않고 본문에 포함해 전달한다
```dart
http.Response response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: {'title': 'hello', 'body': 'world', 'userId': '1'});
```

---

- 만약 같은 URL로 반복해서 요청할 때는 매번 서버와 접속했다 끊었다 반복하는 것은 비효율적이다 -> **Client**

```dart
 onPressClient() async {
    var client = http.Client();
    try {
      http.Response response = await client.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: {'title': 'hello', 'body': 'world', 'iserId': '1'});
      if (response.statusCode == 200 || response.statusCode == 201) {
        response = await client
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
        setState(() {
          result = response.body;
        });
      } else {
        print('error...');
      }
    } finally {
      client.close();
    }
  }
```