<img width="150" alt="GK" src="https://github.com/user-attachments/assets/e8ef2a81-eed4-4b52-a253-1f4563fed631" />

# SwiftGlass

![Swift バージョン](https://img.shields.io/badge/Swift-6.1-teal.svg)
![対応プラットフォーム](https://img.shields.io/badge/platforms-iOS%2015.0+%20|%20macOS%2014.0+%20|%20tvOS%2015.0+%20|%20watchOS%2010.0+%20|%20visionOS%201.0+-indigo.svg)
![ライセンス](https://img.shields.io/badge/license-MIT-blue.svg)

![SwiftGlass@3x](https://github.com/user-attachments/assets/7f289182-9717-4f42-a0d9-880d0fedaf86)

## 特徴

🔄 **クロスプラットフォーム**：iOS、macOS、watchOS、tvOS、visionOSで動作<br/>
✨ **visionOSネイティブ対応**：visionOSではネイティブガラスエフェクトを使用<br/>
🎨 **高度なカスタマイズ性**：色、素材、影などを調整可能<br/>
🧩 **SwiftUI統合**：シンプルなViewModifierの実装

## ギャラリー

| <img width="421" alt="スクリーンショット 2025-04-20 16:16:55" src="https://github.com/user-attachments/assets/062a85c7-6269-4aee-a9b3-b2b336f2c3b0" /> | ![画像](https://github.com/user-attachments/assets/1f5e3ceb-aff1-4f9a-a296-5713fa9164ca) | ![画像](https://github.com/user-attachments/assets/f1417fa5-a3de-40f4-abd8-a1de2c9fe59d) |
| -- | -- | -- |
| iOS | watchOS I | watchOS II |

| ![画像](https://github.com/user-attachments/assets/0a5a65f3-7162-4a3b-aa58-97789803a37a) | ![画像](https://github.com/user-attachments/assets/06195623-cf4b-427d-a4ec-17912c00ca10) |
| -- | -- |
| macOS (ダーク) I | macOS (ダーク) II |

| ![画像](https://github.com/user-attachments/assets/42febaa1-3ddd-4e04-b811-940e1e099ce4) | ![画像](https://github.com/user-attachments/assets/594674a4-391e-46e6-a92f-411e6fbbca70) |
| -- | -- |
| tvOS I | tvOS II |

| ![画像](https://github.com/user-attachments/assets/23067498-c552-48bc-b80a-e5c51d82dbd1) | ![画像](https://github.com/user-attachments/assets/52d0a618-5c06-41ba-9687-dac7bbf34a35) |
| -- | -- |
| visionOS | iPadOS |

## テスト済みプラットフォームと環境

iOS 15.0+、macOS 14.0+、watchOS 10.0+、tvOS 15.0+、visionOS 1.0+

Xcode 16.3 (最低要件ではありません)

![画像](https://github.com/user-attachments/assets/99794cda-e879-4194-85fb-f6350ddf9db8)

## プロジェクトデモ（クイックスタート）

```
/Demo/Demo.xcodeproj を開く
```

## インストール（プロジェクトへの追加）

### Swift Package Manager

Swift Package ManagerでSwiftGlassをプロジェクトに追加

```
プロジェクト > Package Dependencies > +

https://github.com/1998code/SwiftGlass.git
```

<img width="1248" alt="スクリーンショット 2025-04-20 16:29:46" src="https://github.com/user-attachments/assets/443f3489-c8b2-4d4f-a716-0003ecab5951" />

> または以下のように手動で追加することもできます

```swift
dependencies: [
    .package(url: "https://github.com/1998code/SwiftGlass.git", from: "1.0.0")
]
```

## 使用方法

### 基本的な使い方（ビュー / ボタン / どこでも）

<img width="328" alt="スクリーンショット 2025-04-20 14:41:51" src="https://github.com/user-attachments/assets/1c64b4a6-7e10-4ee8-8e81-a731891a10fb" />


```swift
import SwiftUI
import SwiftGlass

struct ContentView: View {
    var body: some View {
        Text("こんにちは、ガラス!")
            .padding(40)
            .glass() // デフォルトのガラスエフェクトを使用
    }
}
```

### カスタムガラスエフェクト

<img width="328" alt="スクリーンショット 2025-04-20 14:40:11" src="https://github.com/user-attachments/assets/0c2c234a-2c74-4262-9a54-23d62ba03815" />

```swift
VStack {
    Text("カスタムガラス")
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

## カスタマイズ

SwiftGlassは豊富なカスタマイズオプションを提供しています：

| パラメータ | タイプ | デフォルト値 | 説明 |
|---|---|---|---|
| `displayMode` | `.always` または `.automatic` | `.always` | エフェクトの表示タイミングを制御 |
| `radius` | `CGFloat` | `32` | ガラスエフェクトの角丸半径 |
| `color` | `Color` | `.white` | グラデーションとハイライトのベース色 |
| `material` | `Material` | `.ultraThinMaterial` | SwiftUIのマテリアルスタイル |
| `gradientOpacity` | `Double` | `0.5` | グラデーションオーバーレイの不透明度 |
| `gradientStyle` | `.normal` または `.reverted` | `.normal` | グラデーションの方向スタイル |
| `strokeWidth` | `CGFloat` | `1.5` | ボーダーストロークの幅 |
| `shadowColor` | `Color` | `.white` | ドロップシャドウの色 |
| `shadowOpacity` | `Double` | `0.5` | シャドウの不透明度 |
| `shadowRadius` | `CGFloat?` | `nil` | シャドウのぼかし半径 |
| `shadowX` | `CGFloat` | `0` | シャドウの水平オフセット |
| `shadowY` | `CGFloat` | `5` | シャドウの垂直オフセット |

## プラットフォーム固有の注意点

- **visionOS**：visionOSでは、最適なレンダリングとシステム統合のために、ネイティブの`.glassBackgroundEffect()`を使用
- **その他のプラットフォーム**：マテリアル、グラデーション、シャドウを組み合わせたカスタム実装で同様の効果を実現

## 貢献について

SwiftGlassへの貢献を歓迎します！

- バグの報告や機能リクエストは、GitHubでissueを開いてください
- プルリクエストを提出する際は、プロジェクトのコーディングスタイルに従ってください

## ライセンス

MIT。詳細はLICENSEファイルをご覧ください。
