# 깡샘의 플러터&다트 프로그래밍 15-3

---

- **dio**
- 서버와 HTTP 통신할 때 http 패키지를 이용하는 방법이 있는데 더 많은 기능을 제공하는 패키지이다.
- **pubspec.yaml** 파일에 추가
```
dependencies:
    dio: ^4.0.4 //들여쓰기 주의!!!
```

---

### Get 방식으로 요청하기
```dart
try{
    var response = await Dio().get('https://reqres.in/api/users?page=1');
    if(response.statusCode == 200){
        String result = response.data.toString();
        print("result...$result");
    }
}
catch(e){
    print(e);
}
```
- **get()** 함수를 호출하여 서버에 요청하며 결과는 **Response** 타입의 객체 **response**에 저장한다. 
- **response**의 **statusCode**로 상태 코드를 얻고 서버에서 전송한 데이터는 **data** 속성으로 얻는다.
- 서버에 전송할 데이터를 URL 뒤에 ?로 추가했다. 다른 방법도 있다
```dart
var response = await Dio().get('https://reqres.in/api/users', queryParameters:{'page':2});
```

---

### BaseOptions로 Dio 속성 지정하기
- **connectTimeout, receiveTimeout** 타임 아웃 지정 가능
- **baseUrl**로 서버 URL의 공통 부분 명시 

---

### 동시 요청하기

- **dio**에서는 여러 요청을 **List**타입으로 지정하여 동시에 처리 가능하다.

---

### 요청이나 응답 가로채기 - Interceptor
- 인터셉터는 데이터를 가로챈다는 의미
- 서버와 연동할 때마다 똑같이 실행할 코드를 반복하지 않고 인터셉터에 작성할 수 있다. (로그를 남기는 경우)

---
### dio 패키지 활용
```dart
class MyAppState extends State<ch15_3> {
  String result = '';
  dioTest() async {
    try {
      var dio = Dio(
        BaseOptions(
          baseUrl: "https://reqres.in/api/", //요청할 기본 주소
          connectTimeout: 5000, // 서버로부터 응답받는 시간
          receiveTimeout: 5000, // 파딜 다운로드 등과 같이 연결 지속시간
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json', //json형식으로 받을거다
            HttpHeaders.acceptHeader: 'application/json'
          },
        ),
      );
      List<Response<dynamic>> response = await Future.wait([
        dio.get('https://reqres.in/api/users?page=1'),
        dio.get('https://reqres.in/api/users?page=2')
      ]);
      for (var element in response) {
        if (element.statusCode == 200) {
          setState(() {
            result = element.data.toString();
          });
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
```