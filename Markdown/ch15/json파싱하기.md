# 깡샘의 플러터&다트 프로그래밍 15-1


### JSON(JavaScript Object Notation) 파싱하기
- **데이터**를 표현하는데 사용되는 데이터 교환 형식이다
    - 키-값 쌍으로 구성, 사람과 기계 모두 이해 쉽다
- User라는 객체는 기기에 할당된 메모리에서만 유효한 데이터다.
- 구조화된 방법이 필요한데, 이때 **JSON**을 가장 많이 사용한다.


--- 


### Map
- **Map**은 키-값 쌍으로 데이터를 저장하는 데이터 구조
- Flutter에서 **'dartLcore'** 라이브러리에 포함된 내장 데이터 타입 제공
### JSON()
- **인코딩**: **Map** 형식 데이터를 문자열로 변환, 데이터를 서버에 전송할 때 필요
- **디코딩**: **JSON**문자열을 **Map**으로 변환, 서버에서 전송된 문자열을 앱에서 사용할 때 필요

--- 

### 모델 클래스로 json 데이터 이용

- **Map<String,dynamic>** 처럼 값을 dynamic으로 선언했기 때문에 오타가 나도 디코딩, 인코딩에는 문제가 없다.
> 이런 경우 **모델 클래스**를 사용한다 
```dart
class Todo {
  //모델 클래스
  @JsonKey(name: "id")
  int todoId;
  String title;
  bool completed;
  Location location;
  Todo(this.todoId, this.title, this.completed, this.location);
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
```
- **tojson** 과 **fromjson**
    - 객체 -> json: **toJson**
    - json -> 객체: **fromJson**


