![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platform](https://img.shields.io/badge/Platform-iOS-red.svg)

# StarRate

## 主要内容的介绍

* `进行评分(支持点击,滑动,最少星星数设置)`<br>

* `展示评分`<br>

* `类型选择(整颗星,半颗星,部分星星)`<br>

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)


## Requirements

- Swift 5.0
- iOS 9.0.0+
- Xcode 10.2

<br>

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

To integrate **StarRate** into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "chenjie1219/StarRate"
```

Run `carthage update` to build the framework and drag the built `StarRateView.framework` into your Xcode project.

### Manually

Just download the project, and drag and drop the "StarRateView" folder in your project.

<br>

## Usage

### 1.创建星级视图（可进行评分）
```Swift
/// 创建视图对象（totalStarCount:总星星数量, currentStarCount:当前星星数, starSpace:星星的间隔）
let starView = StarRateView(frame: CGRect(x: 0, y: 0, width: 120, height: 20),totalStarCount: 5 ,currentStarCount: 0 ,starSpace: 5)

/// 显示星级视图（type:星星类型, isPanEnable:是否可滑动评分, leastStar:评分的最少星星数） 
starView.show(type: .default, isPanEnable: true, leastStar: 0) { (score) in
    /// 评分后的回调方法
    <#code#>
}
```
### 2.创建星级视图（不可评分,仅展示当前评分）
```Swift
/// 创建视图对象（totalStarCount:总星星数量, currentStarCount:当前星星数, starSpace:星星的间隔）
let starView = StarRateView(frame: CGRect(x: 0, y: 0, width: 120, height: 20),totalStarCount: 5 ,currentStarCount: 3 ,starSpace: 5)

/// 关闭用户手势操作,默认是开启的(关闭后不可点击,不可滑动,仅用来显示当前评分)
starView.isUserInteractionEnabled = false//不支持用户手势操作
```

## 效果图
![1](Assets/1.gif)

## Author

* Email:4234115@qq.com

* Wechat:4234115
