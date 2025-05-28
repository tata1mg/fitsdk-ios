# FitSDK for iOS

FitSDK is an iOS SDK that enables seamless integration of fitness wearable devices into your iOS applications. Connect and manage various fitness trackers with a simple, intuitive interface.

## Features

- 🏃‍♂️ **Multi-Device Support**: Connect to various fitness wearables and trackers
- 📱 **Native iOS Integration**: Built specifically for iOS with SwiftUI support
- 🔐 **Secure Authentication**: Robust authentication system for device connections
- 🎨 **Modern UI**: Beautiful interface with custom fonts and styling
- 🔗 **Deep Linking**: Handle external URL redirections seamlessly

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.0+

## Installation

### Swift Package Manager

Add FitSDK to your project using Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependencies**
2. Enter the repository URL
3. Select the version you want to use
4. Add the package to your target

Alternatively, add it to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "[https://github.com/tata1mg/fitsdk-ios]", from: "0.0.4")
]
```

## Quick Start

### 1. Import the SDK

```swift
import FitSDK
```

### 2. Initialize the SDK

```swift
// Create configuration data
let fitData = FitSDKData(
    authToken: "your-auth-token",
    visitorId: "unique-visitor-id", 
    affiliateSource: "your-app-source",
    referenceId: "optional-reference-id" // Optional
)

// Initialize the SDK
FitSDKManager.initialize(
    with: navigationController,
    delegate: self, // Optional: implement FitSDKHandlerDelegate
    data: fitData
)
```

### 3. Implement Delegate (Optional)

```swift
extension MyViewController: FitSDKHandlerDelegate {
    func fitSDKHandlerDidRequestOpen(_ url: URL) {
        UIApplication.shared.open(url)
    }
}
```

## API Reference

### FitSDKManager

The main entry point for the SDK.

- `initialize(with:delegate:data:)` - Initializes the SDK with configuration data

### FitSDKData

Configuration structure containing:
- `authToken` - Authentication token for API access
- `visitorId` - Unique identifier for the visitor/user
- `affiliateSource` - Source identifier for tracking
- `referenceId` - Optional reference identifier

### FitSDKHandlerDelegate

Optional protocol for handling URL redirections when connecting to wearable devices.

```swift
public protocol FitSDKHandlerDelegate: AnyObject {
    func fitSDKHandlerDidRequestOpen(_ url: URL)
}
```
## Support

For support, questions, or feature requests:
- Create an issue on GitHub

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
