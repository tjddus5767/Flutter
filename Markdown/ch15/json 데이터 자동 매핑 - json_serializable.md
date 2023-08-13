# JSON 데이터 자동 매핑 - json_serializable

---

```
dependencies:
  json_annotation: ^4.5.0 ##버전을 지정한 줄
dev_dependencies:
  json_serializable: ^6.2.0 # 버전을 지정한 줄
  build_runner: ^2.1.11 # 버전을 지정한 줄
```
> yaml 파일에 추가한다. **들여쓰기**가 틀리면 **오류**가 발생하니 주의하자

```
import 'package:json_annotation/json_annotation.dart'; 
```

- import 추가

- **json_serializable**패키지로 모델 클래스를 만들기 -> **@JsonSerializable()** 애너테이션 추가
- **JSON** 데이터의 키와 모델 클래스의 속성 이름이 다를 때는 해당 속성 위에 키 이름이 명시된 **@JsonKey()** 추가

----

```dart
factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
```
- `_$TodoFromJson(json);`로 **JSON** 데이터를 매핑해 객체 생성
- `_$TodoToJson(this);`로 객체를 **JSON** 데이터로 변환

> 하지만 아직 **오류**가 발생한다

> 터미널 창에서 **flutter pub run build_runner build**  
- 본인이 만든 파일.g.dart 파일이 자동 생성되고 코드를 살펴보면 변환을 해주는 코드가 있다.

---

### 모델 클래스 중첩 클래스

```dart
@JsonSerializable() //자동 변환
class Location {
  String latitude;
  String longitude;
  Location(this.latitude, this.longitude);
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
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

- `@JsonSerializable(explicitToJson: true)` 반드시 작성
- `@JsonSerializable()` 두 클래스 모두 작성