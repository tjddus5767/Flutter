## 오류 상황
- vs code에서 마크다운 미리보기가 안됨
    - extension에서 **auto-opne markdown preview** 설치
- FLutter main.dart파일을 제외한 나머지 파일에서 실행을 하고 싶다 

**해결 방법**: 파일 생성
```dart
void main(){
    runApp(const MyApp2()); 
}
```
**main.dart파일에서 MyApp2()를 새로 만든 파일 함수명과 동일하게 한다.**




## 오류 상황
---
- 데이터 자동매핑을 하기 위해서 yaml파일에 
```
dev_dependencies:
  flutter_test:
    sdk: flutter

  json_serializable: ^6.7.1 # 버전을 지정한 줄
  build_runner: ^2.4.6 # 버전을 지정한 줄
```

하지만 오류가 떳었다. (이 코드는 오류x)

- 오류의 원인은 **들여쓰기**
    - dev_dependencies 기준으로 **들여쓰기 2**번을 해야하는 것 같다(까다롭다)
    - 헌 칸이라도 틀리면 오류가 난다.