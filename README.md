# FitSDK 🏋️‍♂️

FitSDK is a lightweight and efficient **iOS framework** designed to seamlessly integrate fitness tracking and health-related data into your apps. With support for activity tracking, heart rate monitoring, and workout data management, FitSDK simplifies the process of building fitness-based applications.

## 🚀 Features  
- 📊 **Activity Tracking** – Monitor workouts, steps, and calories burned.  
- ❤️ **Heart Rate Monitoring** – Access real-time and historical heart rate data.  
- 🏃 **Workout Logging** – Record, analyze, and manage different types of workouts.  
- 📡 **Live Data Support** – Stream fitness data in real-time from sensors.  
- 🔌 **Easy Integration** – Designed for quick setup with Swift and Objective-C.  

## 📦 Installation (CocoaPods)  
You can install FitSDK using [CocoaPods](https://cocoapods.org/):  

1. Add FitSDK to your **Podfile**:  
   ```ruby
   target 'YourApp' do
     use_frameworks!
     pod 'FitSDK'
   end
   ```
2. Run the following command:  
   ```sh
   pod install
   ```
3. Open the `.xcworkspace` file and import **FitSDK**:  
   ```swift
   import FitSDK
   ```

## 📖 Usage  
Example of fetching steps data:  
```swift
import FitSDK

let stepCount = FitSDK.init(with merchantId: String)
```

## 📄 License  
FitSDK is available under the **MIT License**. See the [LICENSE](LICENSE) file for details.  


