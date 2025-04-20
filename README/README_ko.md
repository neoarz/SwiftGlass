<img width="150" alt="GK" src="https://github.com/user-attachments/assets/e8ef2a81-eed4-4b52-a253-1f4563fed631" />

# SwiftGlass

![Swift 버전](https://img.shields.io/badge/Swift-6.1-teal.svg)
![지원 플랫폼](https://img.shields.io/badge/platforms-iOS%2015.0+%20|%20macOS%2014.0+%20|%20tvOS%2015.0+%20|%20watchOS%2010.0+%20|%20visionOS%201.0+-indigo.svg)
![라이센스](https://img.shields.io/badge/license-MIT-blue.svg)

![SwiftGlass@3x](https://github.com/user-attachments/assets/7f289182-9717-4f42-a0d9-880d0fedaf86)

## 특징

🔄 **크로스 플랫폼**: iOS, macOS, watchOS, tvOS 및 visionOS에서 작동<br/>
✨ **네이티브 visionOS 지원**: visionOS에서 네이티브 유리 효과 사용<br/>
🎨 **높은 커스터마이징 가능성**: 색상, 재질, 그림자 등 다양한 속성 조정 가능<br/>
🧩 **SwiftUI 통합**: 간단한 ViewModifier 구현

## 갤러리

| <img width="421" alt="스크린샷 2025-04-20 오후 4시 16분 55초" src="https://github.com/user-attachments/assets/062a85c7-6269-4aee-a9b3-b2b336f2c3b0" /> | ![이미지](https://github.com/user-attachments/assets/1f5e3ceb-aff1-4f9a-a296-5713fa9164ca) | ![이미지](https://github.com/user-attachments/assets/f1417fa5-a3de-40f4-abd8-a1de2c9fe59d) |
| -- | -- | -- |
| iOS | watchOS I | watchOS II |

| ![이미지](https://github.com/user-attachments/assets/0a5a65f3-7162-4a3b-aa58-97789803a37a) | ![이미지](https://github.com/user-attachments/assets/06195623-cf4b-427d-a4ec-17912c00ca10) |
| -- | -- |
| macOS (다크 모드) I | macOS (다크 모드) II |

| ![이미지](https://github.com/user-attachments/assets/42febaa1-3ddd-4e04-b811-940e1e099ce4) | ![이미지](https://github.com/user-attachments/assets/594674a4-391e-46e6-a92f-411e6fbbca70) |
| -- | -- |
| tvOS I | tvOS II |

| ![이미지](https://github.com/user-attachments/assets/23067498-c552-48bc-b80a-e5c51d82dbd1) | ![이미지](https://github.com/user-attachments/assets/52d0a618-5c06-41ba-9687-dac7bbf34a35) |
| -- | -- |
| visionOS | iPadOS |

## 테스트된 플랫폼 및 환경

iOS 15.0+, macOS 14.0+, watchOS 10.0+, tvOS 15.0+ 및 visionOS 1.0+

Xcode 16.3 (최소 요구사항 아님)

![이미지](https://github.com/user-attachments/assets/99794cda-e879-4194-85fb-f6350ddf9db8)

## 프로젝트 데모 (빠른 시작)

```
/Demo/Demo.xcodeproj 열기
```

## 설치 (프로젝트에 추가)

### Swift Package Manager

Swift Package Manager를 통해 프로젝트에 SwiftGlass 추가하기

```
프로젝트 > Package Dependencies > +

https://github.com/1998code/SwiftGlass.git
```

<img width="1248" alt="스크린샷 2025-04-20 오후 4시 29분 46초" src="https://github.com/user-attachments/assets/443f3489-c8b2-4d4f-a716-0003ecab5951" />

> 또는 다음과 같이 수동으로 추가할 수 있습니다

```swift
dependencies: [
    .package(url: "https://github.com/1998code/SwiftGlass.git", from: "1.0.0")
]
```

## 사용 방법

### 기본 사용법 (뷰 / 버튼 / 어디서든)

<img width="328" alt="스크린샷 2025-04-20 오후 2시 41분 51초" src="https://github.com/user-attachments/assets/1c64b4a6-7e10-4ee8-8e81-a731891a10fb" />


```swift
import SwiftUI
import SwiftGlass

struct ContentView: View {
    var body: some View {
        Text("안녕, 유리!")
            .padding(40)
            .glass() // 기본 유리 효과 사용
    }
}
```

### 커스텀 유리 효과

<img width="328" alt="스크린샷 2025-04-20 오후 2시 40분 11초" src="https://github.com/user-attachments/assets/0c2c234a-2c74-4262-9a54-23d62ba03815" />

```swift
VStack {
    Text("커스텀 유리")
    Image(systemName: "sparkles")
}
.padding(30)
.glass(
    radius: 20,
    color: .blue,
    material: .regularMaterial,
    gradientOpacity: 0.7,
    shadowColor: .blue,
    shadowRadius: 10
)
```

## 커스터마이징

SwiftGlass는 다양한 커스터마이징 옵션을 제공합니다:

| 매개변수 | 타입 | 기본값 | 설명 |
|---|---|---|---|
| `displayMode` | `.always` 또는 `.automatic` | `.always` | 효과가 표시되는 시기를 제어 |
| `radius` | `CGFloat` | `32` | 유리 효과의 모서리 반경 |
| `color` | `Color` | `.white` | 그라데이션과 하이라이트의 기본 색상 |
| `material` | `Material` | `.ultraThinMaterial` | SwiftUI 재질 스타일 |
| `gradientOpacity` | `Double` | `0.5` | 그라데이션 오버레이의 불투명도 수준 |
| `gradientStyle` | `.normal` 또는 `.reverted` | `.normal` | 그라데이션의 방향 스타일 |
| `strokeWidth` | `CGFloat` | `1.5` | 테두리 선의 두께 |
| `shadowColor` | `Color` | `.white` | 그림자 색상 |
| `shadowOpacity` | `Double` | `0.5` | 그림자의 불투명도 수준 |
| `shadowRadius` | `CGFloat?` | `nil` | 그림자의 흐림 반경 |
| `shadowX` | `CGFloat` | `0` | 그림자의 가로 오프셋 |
| `shadowY` | `CGFloat` | `5` | 그림자의 세로 오프셋 |

## 플랫폼별 참고 사항

- **visionOS**: visionOS에서는 SwiftGlass가 최적의 렌더링과 시스템 통합을 위해 네이티브 `.glassBackgroundEffect()`를 사용합니다
- **기타 플랫폼**: 유사한 효과를 달성하기 위해 재질, 그라데이션 및 그림자를 조합한 커스텀 구현을 사용합니다

## 기여하기

SwiftGlass에 기여하는 것을 환영합니다!

- 버그를 보고하거나 기능을 요청하려면 GitHub에 이슈를 열어주세요
- 풀 리퀘스트를 제출할 때는 프로젝트의 코딩 스타일을 따라주세요

## 라이센스

MIT. 자세한 내용은 LICENSE 파일을 참조하세요.
