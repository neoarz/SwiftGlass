<img width="150" alt="GK" src="https://github.com/user-attachments/assets/e8ef2a81-eed4-4b52-a253-1f4563fed631" />

# Swift 玻璃

![Swift 版本](https://img.shields.io/badge/Swift-6.1-teal.svg)
![支援平台](https://img.shields.io/badge/platforms-iOS%2015.0+%20|%20macOS%2014.0+%20|%20tvOS%2015.0+%20|%20watchOS%2010.0+%20|%20visionOS%201.0+-indigo.svg)
![授權條款](https://img.shields.io/badge/license-MIT-blue.svg)

![SwiftGlass@3x-tc](https://github.com/user-attachments/assets/8d72405a-d236-4806-a6c8-82ac8def780c)

## 特性

🔄 **跨平台**：支援 iOS、macOS、watchOS、tvOS 和 visionOS<br/>
✨ **原生 visionOS 支援**：在 visionOS 上使用原生玻璃效果<br/>
🎨 **高度客製化**：調整顏色、材質、陰影等多種屬性<br/>
🧩 **SwiftUI 整合**：簡單的 ViewModifier 實現方式

## 效果展示

| <img width="421" alt="螢幕截圖 2025-04-20 下午4點16分55秒" src="https://github.com/user-attachments/assets/062a85c7-6269-4aee-a9b3-b2b336f2c3b0" /> | ![圖片](https://github.com/user-attachments/assets/1f5e3ceb-aff1-4f9a-a296-5713fa9164ca) | ![圖片](https://github.com/user-attachments/assets/f1417fa5-a3de-40f4-abd8-a1de2c9fe59d) |
| -- | -- | -- |
| iOS | watchOS I | watchOS II |

| ![圖片](https://github.com/user-attachments/assets/0a5a65f3-7162-4a3b-aa58-97789803a37a) | ![圖片](https://github.com/user-attachments/assets/06195623-cf4b-427d-a4ec-17912c00ca10) |
| -- | -- |
| macOS (暗色模式) I | macOS (暗色模式) II |

| ![圖片](https://github.com/user-attachments/assets/42febaa1-3ddd-4e04-b811-940e1e099ce4) | ![圖片](https://github.com/user-attachments/assets/594674a4-391e-46e6-a92f-411e6fbbca70) |
| -- | -- |
| tvOS I | tvOS II |

| ![圖片](https://github.com/user-attachments/assets/23067498-c552-48bc-b80a-e5c51d82dbd1) | ![圖片](https://github.com/user-attachments/assets/52d0a618-5c06-41ba-9687-dac7bbf34a35) |
| -- | -- |
| visionOS | iPadOS |

## 測試平台和環境

支援 iOS 15.0+、macOS 14.0+、watchOS 10.0+、tvOS 15.0+ 和 visionOS 1.0+

Xcode 16.3（非最低要求）

![圖片](https://github.com/user-attachments/assets/99794cda-e879-4194-85fb-f6350ddf9db8)

## 專案演示（快速開始）

```
開啟 /Demo/Demo.xcodeproj
```

## 安裝（添加到您的專案）

### Swift Package Manager

通過 Swift Package Manager 將 SwiftGlass 添加到您的專案

```
專案 > Package Dependencies > +

https://github.com/1998code/SwiftGlass.git
```

<img width="1248" alt="螢幕截圖 2025-04-20 下午4點29分46秒" src="https://github.com/user-attachments/assets/443f3489-c8b2-4d4f-a716-0003ecab5951" />

> 或者您可以按照以下方式手動添加

```swift
dependencies: [
    .package(url: "https://github.com/1998code/SwiftGlass.git", from: "1.0.0")
]
```

## 使用方法

### 基本使用（視圖 / 按鈕 / 任何地方）

<img width="328" alt="螢幕截圖 2025-04-20 下午2點41分51秒" src="https://github.com/user-attachments/assets/1c64b4a6-7e10-4ee8-8e81-a731891a10fb" />


```swift
import SwiftUI
import SwiftGlass

struct ContentView: View {
    var body: some View {
        Text("你好, 玻璃!")
            .padding(40)
            .glass() // 使用預設玻璃效果
    }
}
```

### 客製化玻璃效果

<img width="328" alt="螢幕截圖 2025-04-20 下午2點40分11秒" src="https://github.com/user-attachments/assets/0c2c234a-2c74-4262-9a54-23d62ba03815" />

```swift
VStack {
    Text("自訂玻璃")
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

## 自訂選項

SwiftGlass 提供豐富的自訂選項：

| 參數 | 類型 | 預設值 | 描述 |
|---|---|---|---|
| `displayMode` | `.always` 或 `.automatic` | `.always` | 控制效果的顯示時機 |
| `radius` | `CGFloat` | `32` | 玻璃效果的圓角半徑 |
| `color` | `Color` | `.white` | 漸變和高光的基礎顏色 |
| `material` | `Material` | `.ultraThinMaterial` | SwiftUI 材質樣式 |
| `gradientOpacity` | `Double` | `0.5` | 漸變疊加層的不透明度 |
| `gradientStyle` | `.normal` 或 `.reverted` | `.normal` | 漸變的方向樣式 |
| `strokeWidth` | `CGFloat` | `1.5` | 邊框描邊的寬度 |
| `shadowColor` | `Color` | `.white` | 陰影顏色 |
| `shadowOpacity` | `Double` | `0.5` | 陰影的不透明度 |
| `shadowRadius` | `CGFloat?` | `nil` | 陰影的模糊半徑 |
| `shadowX` | `CGFloat` | `0` | 陰影的水平偏移量 |
| `shadowY` | `CGFloat` | `5` | 陰影的垂直偏移量 |

## 平台特定說明

- **visionOS**：在 visionOS 上，SwiftGlass 使用原生的 `.glassBackgroundEffect()` 以獲得最佳渲染和系統整合
- **其他平台**：通過組合材質、漸變和陰影的客製化實現來達到類似效果

## 貢獻

歡迎為 SwiftGlass 做出貢獻！

- 要報告錯誤或請求功能，請在 GitHub 上提出 issue
- 提交 pull request 時，請遵循專案的代碼風格

## 授權條款

MIT。詳細資訊請查閱 LICENSE 文件。
