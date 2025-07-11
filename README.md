# Yacode_TestClient

`Yacode_TestClient`는 산업용 프린터(Yacode 장비)와의 통신을 테스트 하기 위한 테스트용 프로젝트입니다. **템플릿 전송**, **인쇄 제어**, **실시간 상태 모니터링**, **로그 수신**, **이미지/텍스트 전송 인쇄** 등 기본적인 프로토콜 명령 테스트 예제 코드라고 보면 됩니다.

## 📦 주요 기능 요약

| 기능 | 설명 |
|------|------|
| 프린터 연결/해제 | TCP를 통해 Yacode 장비와 연결 및 연결 해제 |
| 상태 조회 | 장비의 시스템 상태 및 인쇄 상태 실시간 조회 |
| 템플릿 목록 조회 | 장비에 저장된 최근 인쇄 템플릿 조회 |
| 인쇄 제어 | 인쇄 시작 명령 및 동적 데이터(text/image) 전송 |
| 로그 수신 | 장비의 응답 메시지 수신 및 로그 출력 |
| 테마 전환 | 라이트/다크 테마 전환 지원 (Wpf.Ui 라이브러리 기반) |

## 🗂️ 프로젝트 구조

```
Yacode_TestClient/
├── Models/
│   ├── AppConfig.cs              # 설정 파일 관련 클래스
│   └── DataColor.cs             # 컬러 시각화용 데이터 모델
│
├── Services/
│   ├── ApplicationHostService.cs  # 초기 페이지 및 네비게이션 구성
│   ├── YacodeClientService.cs     # 프린터 통신 핵심 서비스 (TCP)
│   └── YacodeProtocolMessage.cs   # 프로토콜 포맷 정의 및 직렬화/역직렬화
│
├── ViewModels/
│   └── Pages/
│       ├── DashboardViewModel.cs  # 프린터 제어 및 데이터 전송 주요 ViewModel
│       ├── DataViewModel.cs       # 색상 시각화 랜덤 컬러 예제
│       └── SettingsViewModel.cs   # 테마 설정 및 앱 정보
│
├── Views/
│   └── Pages/
│       ├── DashboardPage.xaml(.cs)  # 메인 기능 UI (연결, 인쇄 등)
│       ├── DataPage.xaml(.cs)       # 색상 관련 UI 예제
│       └── SettingsPage.xaml(.cs)   # 테마 설정 화면
│
├── Helpers/
│   ├── EnumToBooleanConverter.cs  # Enum ↔ Bool 변환 (라디오 버튼용)
│   └── ValueConverters.cs         # Boolean ↔ Appearance 변환
│
├── App.xaml                       # 애플리케이션 테마 및 스타일 정의
└── Yacode_TestClient.sln          # Visual Studio 솔루션 파일
```

## 🔌 Yacode 프린터와의 통신 개요

- **프로토콜 구조**
  - 헤더: `0xEB 0x01`
  - 명령코드: 2바이트
  - 데이터 길이: 4바이트 (Big-Endian)
  - 데이터: JSON 문자열 (null 종료 + 바이너리 이미지 가능)

- **주요 명령 코드**
  - `0x00 0x01`: 시스템 상태 요청
  - `0x00 0x02`: 인쇄 상태 요청
  - `0x00 0x04`: 동적 데이터 전송
  - `0x00 0x05`: 인쇄 시작
  - `0x00 0x03`: 인쇄 로그 조회
  - `0x00 0x07`: 템플릿 캐시 조회

## 🖼️ 이미지 전송 구조

- **BMP 포맷 전송**  
  - 실 이미지 파일이 없을 경우 1x1 픽셀 더미 이미지 자동 생성
- **JSON Payload 예시**
```json
{
  "text": [
    {
      "metaname": "DynImage1",
      "is_image": 1,
      "metadata_pos": 0,
      "metadata_len": 12345,
      "hide_flag": 0,
      "metaimage_dpi": 300,
      "metaimage_has_rolate": 0,
      "compress": 0
    },
    {
      "metaname": "DynText1",
      "is_image": 0,
      "metadata": "인쇄할 텍스트",
      "hide_flag": 0
    }
  ],
  "repeat_times": -1,
  "app_mode": 1000,
  "direct": -1,
  "cover_flag": 0,
  "hide_flag": 0
}
```

## ⚙️ 사용 방법

1. IP 입력 후 `연결` 버튼 클릭
2. `Start Printing` 버튼으로 인쇄 준비
3. 텍스트 입력 후 이미지 선택
4. `Send to Printer` 클릭으로 전송 및 인쇄 시작

## 💡 개발 참고 사항

- `Wpf.Ui` 기반 MVVM 구조 (ObservableObject, RelayCommand 활용)
- `DashboardViewModel`이 주요 통신 로직과 상태 처리 담당
- `YacodeClientService`는 모든 TCP 통신 및 응답 핸들링 담당
- 추후 Service단은 Interface 설계를 통해 다양한 프린터들을 일괄적으로 테스트 할 수 있도록 하면 좋을 듯 함 

---