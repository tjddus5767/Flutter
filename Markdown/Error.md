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
