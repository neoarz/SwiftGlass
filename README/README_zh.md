<img width="150" alt="GK" src="https://github.com/user-attachments/assets/e8ef2a81-eed4-4b52-a253-1f4563fed631" />

# Swift 玻璃

![Swift 版本](https://img.shields.io/badge/Swift-6.1-teal.svg)
![支持平台](https://img.shields.io/badge/platforms-iOS%2015.0+%20|%20macOS%2014.0+%20|%20tvOS%2015.0+%20|%20watchOS%2010.0+%20|%20visionOS%201.0+-indigo.svg)
![许可证](https://img.shields.io/badge/license-MIT-blue.svg)

![SwiftGlass@3x](https://github.com/user-attachments/assets/7f289182-9717-4f42-a0d9-880d0fedaf86)

## 特性

🔄 **跨平台**：支持 iOS、macOS、watchOS、tvOS 和 visionOS<br/>
✨ **原生 visionOS 支持**：在 visionOS 上使用原生玻璃效果<br/>
🎨 **高度可定制**：调整颜色、材质、阴影等多种属性<br/>
🧩 **SwiftUI 集成**：简单的 ViewModifier 实现方式

## 效果展示

| <img width="421" alt="Screenshot 2025-04-20 at 4 16 55 PM" src="https://github.com/user-attachments/assets/062a85c7-6269-4aee-a9b3-b2b336f2c3b0" /> | ![image](https://github.com/user-attachments/assets/1f5e3ceb-aff1-4f9a-a296-5713fa9164ca) | ![image](https://github.com/user-attachments/assets/f1417fa5-a3de-40f4-abd8-a1de2c9fe59d) |
| -- | -- | -- |
| iOS | watchOS I | watchOS II |

| ![image](https://github.com/user-attachments/assets/0a5a65f3-7162-4a3b-aa58-97789803a37a) | ![image](https://github.com/user-attachments/assets/06195623-cf4b-427d-a4ec-17912c00ca10) |
| -- | -- |
| macOS (暗色模式) I | macOS (暗色模式) II |

| ![图片](https://github.com/user-attachments/assets/42febaa1-3ddd-4e04-b811-940e1e099ce4) | ![图片](https://github.com/user-attachments/assets/594674a4-391e-46e6-a92f-411e6fbbca70) |
| -- | -- |
| tvOS I | tvOS II |

| ![图片](https://github.com/user-attachments/assets/23067498-c552-48bc-b80a-e5c51d82dbd1) | ![图片](https://github.com/user-attachments/assets/52d0a618-5c06-41ba-9687-dac7bbf34a35) |
| -- | -- |
| visionOS | iPadOS |

## 测试平台和环境

支持 iOS 15.0+、macOS 14.0+、watchOS 10.0+、tvOS 15.0+ 和 visionOS 1.0+

Xcode 16.3（非最低要求）

![图片](https://github.com/user-attachments/assets/99794cda-e879-4194-85fb-f6350ddf9db8)

## 项目演示（快速开始）

```
打开 /Demo/Demo.xcodeproj
```

## 安装（添加到您的项目）

### Swift Package Manager

通过 Swift Package Manager 将 SwiftGlass 添加到您的项目

```
项目 > Package Dependencies > +

https://github.com/1998code/SwiftGlass.git
```

<img width="1248" alt="屏幕截图 2025-04-20 下午4点29分46秒" src="https://github.com/user-attachments/assets/443f3489-c8b2-4d4f-a716-0003ecab5951" />

> 或者您可以按照以下方式手动添加

```swift
dependencies: [
    .package(url: "https://github.com/1998code/SwiftGlass.git", from: "1.0.0")
]
```

## 使用方法

### 基本使用（视图 / 按钮 / 任何地方）

<img width="328" alt="屏幕截图 2025-04-20 下午2点41分51秒" src="https://github.com/user-attachments/assets/1c64b4a6-7e10-4ee8-8e81-a731891a10fb" />


```swift
import SwiftUI
import SwiftGlass

struct ContentView: View {
    var body: some View {
        Text("Hello, Glass!")
            .padding(40)
            .glass() // 使用默认玻璃效果
    }
}
```

### Custom Glass Effect

<img width="328" alt="Screenshot 2025-04-20 at 2 40 11 PM" src="https://github.com/user-attachments/assets/0c2c234a-2c74-4262-9a54-23d62ba03815" />

```swift
VStack {
    Text("Custom Glass")
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

## 自定义选项

SwiftGlass 提供丰富的自定义选项：

| 参数 | 类型 | 默认值 | 描述 |
|---|---|---|---|
| `displayMode` | `.always` 或 `.automatic` | `.always` | 控制效果的显示时机 |
| `radius` | `CGFloat` | `32` | 玻璃效果的圆角半径 |
| `color` | `Color` | `.white` | 渐变和高光的基础颜色 |
| `material` | `Material` | `.ultraThinMaterial` | SwiftUI 材质样式 |
| `gradientOpacity` | `Double` | `0.5` | 渐变叠加层的不透明度 |
| `gradientStyle` | `.normal` 或 `.reverted` | `.normal` | 渐变的方向样式 |
| `strokeWidth` | `CGFloat` | `1.5` | 边框描边的宽度 |
| `shadowColor` | `Color` | `.white` | 阴影颜色 |
| `shadowOpacity` | `Double` | `0.5` | 阴影的不透明度 |
| `shadowRadius` | `CGFloat?` | `nil` | 阴影的模糊半径 |
| `shadowX` | `CGFloat` | `0` | 阴影的水平偏移量 |
| `shadowY` | `CGFloat` | `5` | 阴影的垂直偏移量 |

## 平台特定说明

- **visionOS**：在 visionOS 上，SwiftGlass 使用原生的 `.glassBackgroundEffect()` 以获得最佳渲染和系统集成
- **其他平台**：通过组合材质、渐变和阴影的自定义实现来达到类似效果

## 贡献

欢迎为 SwiftGlass 做出贡献！

- 要报告错误或请求功能，请在 GitHub 上提出 issue
- 提交 pull request 时，请遵循项目的代码风格

## 许可证

MIT。详细信息请查阅 LICENSE 文件。
